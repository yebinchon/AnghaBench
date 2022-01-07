
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hal_com_data {scalar_t__*** TxPwrByRateBase2_4G; scalar_t__*** TxPwrByRateBase5G; } ;
struct adapter {int dummy; } ;
typedef enum RATE_SECTION { ____Placeholder_RATE_SECTION } RATE_SECTION ;


 scalar_t__ BAND_ON_2_4G ;
 scalar_t__ BAND_ON_5G ;

 int DBG_871X (char*,scalar_t__,...) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;




 scalar_t__ ODM_RF_PATH_D ;






u8 PHY_GetTxPowerByRateBase(struct adapter *Adapter, u8 Band, u8 RfPath,
       u8 TxNum, enum RATE_SECTION RateSection)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 u8 value = 0;

 if (RfPath > ODM_RF_PATH_D) {
  DBG_871X("Invalid Rf Path %d in PHY_GetTxPowerByRateBase()\n", RfPath);
  return 0;
 }

 if (Band == BAND_ON_2_4G) {
  switch (RateSection) {
  case 137:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][0];
   break;
  case 132:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][1];
   break;
  case 136:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][2];
   break;
  case 133:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][3];
   break;
  case 135:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][4];
   break;
  case 134:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][5];
   break;
  case 131:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][6];
   break;
  case 130:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][7];
   break;
  case 129:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][8];
   break;
  case 128:
   value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][9];
   break;
  default:
   DBG_871X("Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\n",
      RateSection, RfPath, TxNum);
   break;
  }
 } else if (Band == BAND_ON_5G) {
  switch (RateSection) {
  case 132:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][0];
   break;
  case 136:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][1];
   break;
  case 133:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][2];
   break;
  case 135:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][3];
   break;
  case 134:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][4];
   break;
  case 131:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][5];
   break;
  case 130:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][6];
   break;
  case 129:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][7];
   break;
  case 128:
   value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][8];
   break;
  default:
   DBG_871X("Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\n",
      RateSection, RfPath, TxNum);
   break;
  }
 } else
  DBG_871X("Invalid Band %d in PHY_GetTxPowerByRateBase()\n", Band);

 return value;
}
