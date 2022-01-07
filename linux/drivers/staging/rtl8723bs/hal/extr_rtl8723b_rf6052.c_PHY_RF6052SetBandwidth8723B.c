
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int* RfRegChnlVal; } ;
struct adapter {int dummy; } ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;


 int BIT10 ;
 int BIT11 ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int ODM_RF_PATH_A ;
 int ODM_RF_PATH_B ;
 int PHY_SetRFReg (struct adapter*,int ,int ,int ,int) ;
 int RF_CHNLBW ;
 int bRFRegOffsetMask ;

void PHY_RF6052SetBandwidth8723B(
 struct adapter *Adapter, enum CHANNEL_WIDTH Bandwidth
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 switch (Bandwidth) {
 case 129:
  pHalData->RfRegChnlVal[0] = ((pHalData->RfRegChnlVal[0] & 0xfffff3ff) | BIT10 | BIT11);
  PHY_SetRFReg(Adapter, ODM_RF_PATH_A, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
  PHY_SetRFReg(Adapter, ODM_RF_PATH_B, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
  break;

 case 128:
  pHalData->RfRegChnlVal[0] = ((pHalData->RfRegChnlVal[0] & 0xfffff3ff) | BIT10);
  PHY_SetRFReg(Adapter, ODM_RF_PATH_A, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
  PHY_SetRFReg(Adapter, ODM_RF_PATH_B, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
  break;

 default:

  break;
 }

}
