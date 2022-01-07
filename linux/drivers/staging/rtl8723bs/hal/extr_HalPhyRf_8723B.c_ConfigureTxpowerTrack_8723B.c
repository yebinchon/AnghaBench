
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int GetDeltaSwingTable; int PHY_LCCalibrate; int DoIQK; int ODM_TxPwrTrackSetPwr; int ThermalRegAddr; int RfPathCount; int AverageThermalNum; int Threshold_IQK; int SwingTableSize_OFDM; int SwingTableSize_CCK; } ;
typedef TYPE_1__* PTXPWRTRACK_CFG ;


 int AVG_THERMAL_NUM_8723B ;
 int CCK_TABLE_SIZE ;
 int DoIQK_8723B ;
 int GetDeltaSwingTable_8723B ;
 int IQK_THRESHOLD ;
 int MAX_PATH_NUM_8723B ;
 int ODM_TxPwrTrackSetPwr_8723B ;
 int OFDM_TABLE_SIZE ;
 int PHY_LCCalibrate_8723B ;
 int RF_T_METER_8723B ;

void ConfigureTxpowerTrack_8723B(PTXPWRTRACK_CFG pConfig)
{
 pConfig->SwingTableSize_CCK = CCK_TABLE_SIZE;
 pConfig->SwingTableSize_OFDM = OFDM_TABLE_SIZE;
 pConfig->Threshold_IQK = IQK_THRESHOLD;
 pConfig->AverageThermalNum = AVG_THERMAL_NUM_8723B;
 pConfig->RfPathCount = MAX_PATH_NUM_8723B;
 pConfig->ThermalRegAddr = RF_T_METER_8723B;

 pConfig->ODM_TxPwrTrackSetPwr = ODM_TxPwrTrackSetPwr_8723B;
 pConfig->DoIQK = DoIQK_8723B;
 pConfig->PHY_LCCalibrate = PHY_LCCalibrate_8723B;
 pConfig->GetDeltaSwingTable = GetDeltaSwingTable_8723B;
}
