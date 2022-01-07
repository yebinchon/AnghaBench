
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_ops {int * fill_h2c_cmd; int c2h_id_filter_ccx; int c2h_handler; int * hal_notch_filter; int * xmit_thread_handler; int * SetHalODMVarHandler; int * GetHalODMVarHandler; int * Efuse_PgPacketWrite_BT; int * Efuse_WordEnableDataWrite; int * Efuse_PgPacketWrite; int * Efuse_PgPacketRead; int * EfuseGetCurrentSize; int * EFUSEGetEfuseDefinition; int * ReadEFuse; int * EfusePowerSwitch; int * BTEfusePowerSwitch; int * write_rfreg; int * read_rfreg; int * write_bbreg; int * read_bbreg; int * cancel_thread; int * run_thread; int * Add_RateATid; int * SetBeaconRelatedRegistersHandler; int * hal_dm_watchdog_in_lps; int * hal_dm_watchdog; int * get_tx_power_level_handler; int * set_tx_power_level_handler; int * set_chnl_bw_handler; int * set_channel_handler; int * set_bwmode_handler; int * UpdateRAMaskHandler; int * read_chip_version; int * dm_init; int * free_hal_data; } ;


 int FillH2CCmd8723B ;
 int Hal_BT_EfusePowerSwitch ;
 int Hal_EfuseGetCurrentSize ;
 int Hal_EfusePgPacketRead ;
 int Hal_EfusePgPacketWrite ;
 int Hal_EfusePgPacketWrite_BT ;
 int Hal_EfusePowerSwitch ;
 int Hal_EfuseWordEnableDataWrite ;
 int Hal_GetEfuseDefinition ;
 int Hal_ReadEFuse ;
 int PHY_GetTxPowerLevel8723B ;
 int PHY_QueryBBReg_8723B ;
 int PHY_QueryRFReg_8723B ;
 int PHY_SetBBReg_8723B ;
 int PHY_SetBWMode8723B ;
 int PHY_SetRFReg_8723B ;
 int PHY_SetSwChnlBWMode8723B ;
 int PHY_SetTxPowerLevel8723B ;
 int PHY_SwChnl8723B ;
 int UpdateHalRAMask8723B ;
 int c2h_handler_8723b ;
 int c2h_id_filter_ccx_8723b ;
 int hal_notch_filter_8723b ;
 int hal_xmit_handler ;
 int rtl8723b_Add_RateATid ;
 int rtl8723b_GetHalODMVar ;
 int rtl8723b_HalDmWatchDog ;
 int rtl8723b_HalDmWatchDog_in_LPS ;
 int rtl8723b_SetBeaconRelatedRegisters ;
 int rtl8723b_SetHalODMVar ;
 int rtl8723b_free_hal_data ;
 int rtl8723b_init_dm_priv ;
 int rtl8723b_read_chip_version ;
 int rtl8723b_start_thread ;
 int rtl8723b_stop_thread ;

void rtl8723b_set_hal_ops(struct hal_ops *pHalFunc)
{
 pHalFunc->free_hal_data = &rtl8723b_free_hal_data;

 pHalFunc->dm_init = &rtl8723b_init_dm_priv;

 pHalFunc->read_chip_version = &rtl8723b_read_chip_version;

 pHalFunc->UpdateRAMaskHandler = &UpdateHalRAMask8723B;

 pHalFunc->set_bwmode_handler = &PHY_SetBWMode8723B;
 pHalFunc->set_channel_handler = &PHY_SwChnl8723B;
 pHalFunc->set_chnl_bw_handler = &PHY_SetSwChnlBWMode8723B;

 pHalFunc->set_tx_power_level_handler = &PHY_SetTxPowerLevel8723B;
 pHalFunc->get_tx_power_level_handler = &PHY_GetTxPowerLevel8723B;

 pHalFunc->hal_dm_watchdog = &rtl8723b_HalDmWatchDog;
 pHalFunc->hal_dm_watchdog_in_lps = &rtl8723b_HalDmWatchDog_in_LPS;


 pHalFunc->SetBeaconRelatedRegistersHandler = &rtl8723b_SetBeaconRelatedRegisters;

 pHalFunc->Add_RateATid = &rtl8723b_Add_RateATid;

 pHalFunc->run_thread = &rtl8723b_start_thread;
 pHalFunc->cancel_thread = &rtl8723b_stop_thread;

 pHalFunc->read_bbreg = &PHY_QueryBBReg_8723B;
 pHalFunc->write_bbreg = &PHY_SetBBReg_8723B;
 pHalFunc->read_rfreg = &PHY_QueryRFReg_8723B;
 pHalFunc->write_rfreg = &PHY_SetRFReg_8723B;


 pHalFunc->BTEfusePowerSwitch = &Hal_BT_EfusePowerSwitch;
 pHalFunc->EfusePowerSwitch = &Hal_EfusePowerSwitch;
 pHalFunc->ReadEFuse = &Hal_ReadEFuse;
 pHalFunc->EFUSEGetEfuseDefinition = &Hal_GetEfuseDefinition;
 pHalFunc->EfuseGetCurrentSize = &Hal_EfuseGetCurrentSize;
 pHalFunc->Efuse_PgPacketRead = &Hal_EfusePgPacketRead;
 pHalFunc->Efuse_PgPacketWrite = &Hal_EfusePgPacketWrite;
 pHalFunc->Efuse_WordEnableDataWrite = &Hal_EfuseWordEnableDataWrite;
 pHalFunc->Efuse_PgPacketWrite_BT = &Hal_EfusePgPacketWrite_BT;

 pHalFunc->GetHalODMVarHandler = &rtl8723b_GetHalODMVar;
 pHalFunc->SetHalODMVarHandler = &rtl8723b_SetHalODMVar;

 pHalFunc->xmit_thread_handler = &hal_xmit_handler;
 pHalFunc->hal_notch_filter = &hal_notch_filter_8723b;

 pHalFunc->c2h_handler = c2h_handler_8723b;
 pHalFunc->c2h_id_filter_ccx = c2h_id_filter_ccx_8723b;

 pHalFunc->fill_h2c_cmd = &FillH2CCmd8723B;
}
