# TCL File Generated by Component Editor 16.1
# Wed Dec 21 16:38:58 GMT 2016
# DO NOT MODIFY


# 
# enet_dma "ENet DMA" v16.1
# Ji Dong 2016.12.21.16:38:58
# ENet DMA Controller
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module enet_dma
# 
set_module_property DESCRIPTION "ENet DMA Controller"
set_module_property NAME enet_dma
set_module_property VERSION 16.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Basic Functions/Interfaces/Enet"
set_module_property AUTHOR "Ji Dong"
set_module_property DISPLAY_NAME "ENet DMA"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL EnetDataDMA
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file enet_dma.vhd VHDL PATH rtl/enet_dma.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock csi_clock_clk clk Input 1


# 
# connection point clock_reset
# 
add_interface clock_reset reset end
set_interface_property clock_reset associatedClock clock
set_interface_property clock_reset synchronousEdges DEASSERT
set_interface_property clock_reset ENABLED true
set_interface_property clock_reset EXPORT_OF ""
set_interface_property clock_reset PORT_NAME_MAP ""
set_interface_property clock_reset CMSIS_SVD_VARIABLES ""
set_interface_property clock_reset SVD_ADDRESS_GROUP ""

add_interface_port clock_reset csi_clock_reset reset Input 1


# 
# connection point cfg
# 
add_interface cfg avalon end
set_interface_property cfg addressUnits WORDS
set_interface_property cfg associatedClock clock
set_interface_property cfg associatedReset clock_reset
set_interface_property cfg bitsPerSymbol 8
set_interface_property cfg burstOnBurstBoundariesOnly false
set_interface_property cfg burstcountUnits WORDS
set_interface_property cfg explicitAddressSpan 0
set_interface_property cfg holdTime 0
set_interface_property cfg linewrapBursts false
set_interface_property cfg maximumPendingReadTransactions 0
set_interface_property cfg maximumPendingWriteTransactions 0
set_interface_property cfg readLatency 0
set_interface_property cfg readWaitTime 1
set_interface_property cfg setupTime 0
set_interface_property cfg timingUnits Cycles
set_interface_property cfg writeWaitTime 0
set_interface_property cfg ENABLED true
set_interface_property cfg EXPORT_OF ""
set_interface_property cfg PORT_NAME_MAP ""
set_interface_property cfg CMSIS_SVD_VARIABLES ""
set_interface_property cfg SVD_ADDRESS_GROUP ""

add_interface_port cfg avs_cfg_address address Input 4
add_interface_port cfg avs_cfg_byteenable byteenable Input 4
add_interface_port cfg avs_cfg_read read Input 1
add_interface_port cfg avs_cfg_readdata readdata Output 32
add_interface_port cfg avs_cfg_write write Input 1
add_interface_port cfg avs_cfg_writedata writedata Input 32
set_interface_assignment cfg embeddedsw.configuration.isFlash 0
set_interface_assignment cfg embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment cfg embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment cfg embeddedsw.configuration.isPrintableDevice 0


# 
# connection point filter
# 
add_interface filter avalon_streaming start
set_interface_property filter associatedClock clock
set_interface_property filter associatedReset clock_reset
set_interface_property filter dataBitsPerSymbol 8
set_interface_property filter errorDescriptor ""
set_interface_property filter firstSymbolInHighOrderBits true
set_interface_property filter maxChannel 0
set_interface_property filter readyLatency 0
set_interface_property filter ENABLED true
set_interface_property filter EXPORT_OF ""
set_interface_property filter PORT_NAME_MAP ""
set_interface_property filter CMSIS_SVD_VARIABLES ""
set_interface_property filter SVD_ADDRESS_GROUP ""

add_interface_port filter aso_filter_data data Output 80


# 
# connection point in
# 
add_interface in avalon_streaming end
set_interface_property in associatedClock clock
set_interface_property in associatedReset clock_reset
set_interface_property in dataBitsPerSymbol 8
set_interface_property in errorDescriptor ""
set_interface_property in firstSymbolInHighOrderBits true
set_interface_property in maxChannel 0
set_interface_property in readyLatency 0
set_interface_property in ENABLED true
set_interface_property in EXPORT_OF ""
set_interface_property in PORT_NAME_MAP ""
set_interface_property in CMSIS_SVD_VARIABLES ""
set_interface_property in SVD_ADDRESS_GROUP ""

add_interface_port in asi_in_ready ready Output 1
add_interface_port in asi_in_valid valid Input 1
add_interface_port in asi_in_startofpacket startofpacket Input 1
add_interface_port in asi_in_endofpacket endofpacket Input 1
add_interface_port in asi_in_empty empty Input 2
add_interface_port in asi_in_data data Input 32
add_interface_port in asi_in_error error Input 6


# 
# connection point out
# 
add_interface out avalon_streaming start
set_interface_property out associatedClock clock
set_interface_property out associatedReset clock_reset
set_interface_property out dataBitsPerSymbol 8
set_interface_property out errorDescriptor ""
set_interface_property out firstSymbolInHighOrderBits true
set_interface_property out maxChannel 0
set_interface_property out readyLatency 0
set_interface_property out ENABLED true
set_interface_property out EXPORT_OF ""
set_interface_property out PORT_NAME_MAP ""
set_interface_property out CMSIS_SVD_VARIABLES ""
set_interface_property out SVD_ADDRESS_GROUP ""

add_interface_port out aso_out_ready ready Input 1
add_interface_port out aso_out_valid valid Output 1
add_interface_port out aso_out_startofpacket startofpacket Output 1
add_interface_port out aso_out_endofpacket endofpacket Output 1
add_interface_port out aso_out_empty empty Output 2
add_interface_port out aso_out_data data Output 32
add_interface_port out aso_out_error error Output 1


# 
# connection point read
# 
add_interface read avalon start
set_interface_property read addressUnits SYMBOLS
set_interface_property read associatedClock clock
set_interface_property read associatedReset clock_reset
set_interface_property read bitsPerSymbol 8
set_interface_property read burstOnBurstBoundariesOnly false
set_interface_property read burstcountUnits WORDS
set_interface_property read doStreamReads false
set_interface_property read doStreamWrites false
set_interface_property read holdTime 0
set_interface_property read linewrapBursts false
set_interface_property read maximumPendingReadTransactions 0
set_interface_property read maximumPendingWriteTransactions 0
set_interface_property read readLatency 0
set_interface_property read readWaitTime 0
set_interface_property read setupTime 0
set_interface_property read timingUnits Cycles
set_interface_property read writeWaitTime 0
set_interface_property read ENABLED true
set_interface_property read EXPORT_OF ""
set_interface_property read PORT_NAME_MAP ""
set_interface_property read CMSIS_SVD_VARIABLES ""
set_interface_property read SVD_ADDRESS_GROUP ""

add_interface_port read avm_read_address address Output 32
add_interface_port read avm_read_read read Output 1
add_interface_port read avm_read_waitrequest waitrequest Input 1
add_interface_port read avm_read_readdata readdata Input 32


# 
# connection point write
# 
add_interface write avalon start
set_interface_property write addressUnits SYMBOLS
set_interface_property write associatedClock clock
set_interface_property write associatedReset clock_reset
set_interface_property write bitsPerSymbol 8
set_interface_property write burstOnBurstBoundariesOnly false
set_interface_property write burstcountUnits WORDS
set_interface_property write doStreamReads false
set_interface_property write doStreamWrites false
set_interface_property write holdTime 0
set_interface_property write linewrapBursts false
set_interface_property write maximumPendingReadTransactions 0
set_interface_property write maximumPendingWriteTransactions 0
set_interface_property write readLatency 0
set_interface_property write readWaitTime 1
set_interface_property write setupTime 0
set_interface_property write timingUnits Cycles
set_interface_property write writeWaitTime 0
set_interface_property write ENABLED true
set_interface_property write EXPORT_OF ""
set_interface_property write PORT_NAME_MAP ""
set_interface_property write CMSIS_SVD_VARIABLES ""
set_interface_property write SVD_ADDRESS_GROUP ""

add_interface_port write avm_write_address address Output 32
add_interface_port write avm_write_write write Output 1
add_interface_port write avm_write_waitrequest waitrequest Input 1
add_interface_port write avm_write_writedata writedata Output 32


# 
# connection point irq
# 
add_interface irq interrupt end
set_interface_property irq associatedAddressablePoint ""
set_interface_property irq associatedClock clock
set_interface_property irq associatedReset clock_reset
set_interface_property irq bridgedReceiverOffset ""
set_interface_property irq bridgesToReceiver ""
set_interface_property irq ENABLED true
set_interface_property irq EXPORT_OF ""
set_interface_property irq PORT_NAME_MAP ""
set_interface_property irq CMSIS_SVD_VARIABLES ""
set_interface_property irq SVD_ADDRESS_GROUP ""

add_interface_port irq ins_irq_enet irq Output 1

