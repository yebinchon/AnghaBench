
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hal_com_data {scalar_t__*** TxPwrByRateBase5G; scalar_t__*** TxPwrByRateBase2_4G; } ;
struct adapter {int dummy; } ;
typedef enum RATE_SECTION { ____Placeholder_RATE_SECTION } RATE_SECTION ;


 scalar_t__ BAND_ON_2_4G ;
 scalar_t__ BAND_ON_5G ;

 int DBG_871X (char*,scalar_t__,...) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;




 scalar_t__ ODM_RF_PATH_D ;






__attribute__((used)) static void
phy_SetTxPowerByRateBase(
 struct adapter *Adapter,
 u8 Band,
 u8 RfPath,
 enum RATE_SECTION RateSection,
 u8 TxNum,
 u8 Value
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 if (RfPath > ODM_RF_PATH_D) {
  DBG_871X("Invalid Rf Path %d in phy_SetTxPowerByRatBase()\n", RfPath);
  return;
 }

 if (Band == BAND_ON_2_4G) {
  switch (RateSection) {
  case 137:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][0] = Value;
   break;
  case 132:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][1] = Value;
   break;
  case 136:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][2] = Value;
   break;
  case 133:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][3] = Value;
   break;
  case 135:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][4] = Value;
   break;
  case 134:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][5] = Value;
   break;
  case 131:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][6] = Value;
   break;
  case 130:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][7] = Value;
   break;
  case 129:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][8] = Value;
   break;
  case 128:
   pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][9] = Value;
   break;
  default:
   DBG_871X("Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in phy_SetTxPowerByRateBase()\n",
      RateSection, RfPath, TxNum);
   break;
  }
 } else if (Band == BAND_ON_5G) {
  switch (RateSection) {
  case 132:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][0] = Value;
   break;
  case 136:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][1] = Value;
   break;
  case 133:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][2] = Value;
   break;
  case 135:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][3] = Value;
   break;
  case 134:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][4] = Value;
   break;
  case 131:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][5] = Value;
   break;
  case 130:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][6] = Value;
   break;
  case 129:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][7] = Value;
   break;
  case 128:
   pHalData->TxPwrByRateBase5G[RfPath][TxNum][8] = Value;
   break;
  default:
   DBG_871X("Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in phy_SetTxPowerByRateBase()\n",
      RateSection, RfPath, TxNum);
   break;
  }
 } else
  DBG_871X("Invalid Band %d in phy_SetTxPowerByRateBase()\n", Band);
}
