
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int CurrentChannel; scalar_t__ rf_chip; int* RfRegChnlVal; } ;
struct adapter {int dummy; } ;


 int DBG_8192C (char*,int) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int ODM_RF_PATH_A ;
 int ODM_RF_PATH_B ;
 int PHY_SetRFReg (struct adapter*,int ,int ,int,int) ;
 int RF_CHNLBW ;
 scalar_t__ RF_PSEUDO_11N ;

__attribute__((used)) static void phy_SwChnl8723B(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 u8 channelToSW = pHalData->CurrentChannel;

 if (pHalData->rf_chip == RF_PSEUDO_11N) {

  return;
 }
 pHalData->RfRegChnlVal[0] = ((pHalData->RfRegChnlVal[0] & 0xfffff00) | channelToSW);
 PHY_SetRFReg(padapter, ODM_RF_PATH_A, RF_CHNLBW, 0x3FF, pHalData->RfRegChnlVal[0]);
 PHY_SetRFReg(padapter, ODM_RF_PATH_B, RF_CHNLBW, 0x3FF, pHalData->RfRegChnlVal[0]);

 DBG_8192C("===>phy_SwChnl8723B: Channel = %d\n", channelToSW);
}
