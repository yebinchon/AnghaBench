
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int EEPROMRegulatory; int ** BW40_24G_Diff; int ** BW20_24G_Diff; int ** OFDM_24G_Diff; int ** CCK_24G_Diff; int ** Index24G_BW40_Base; int ** Index24G_CCK_Base; } ;
struct adapter {int dummy; } ;
struct TxPowerInfo24G {int ** BW40_Diff; int ** BW20_Diff; int ** OFDM_Diff; int ** CCK_Diff; int ** IndexBW40_Base; int ** IndexCCK_Base; } ;


 int CHANNEL_MAX_NUMBER ;
 int EEPROM_DEFAULT_BOARD_OPTION ;
 size_t EEPROM_RF_BOARD_OPTION_8723B ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int Hal_GetChnlGroup8723B (int,int*) ;
 int Hal_ReadPowerValueFromPROM_8723B (struct adapter*,struct TxPowerInfo24G*,int*,int) ;
 int MAX_RF_PATH ;
 int MAX_TX_COUNT ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;

void Hal_EfuseParseTxPowerInfo_8723B(
 struct adapter *padapter, u8 *PROMContent, bool AutoLoadFail
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 struct TxPowerInfo24G pwrInfo24G;
 u8 rfPath, ch, TxCount = 1;

 Hal_ReadPowerValueFromPROM_8723B(padapter, &pwrInfo24G, PROMContent, AutoLoadFail);
 for (rfPath = 0 ; rfPath < MAX_RF_PATH ; rfPath++) {
  for (ch = 0 ; ch < CHANNEL_MAX_NUMBER; ch++) {
   u8 group = 0;

   Hal_GetChnlGroup8723B(ch+1, &group);

   if (ch == 14-1) {
    pHalData->Index24G_CCK_Base[rfPath][ch] = pwrInfo24G.IndexCCK_Base[rfPath][5];
    pHalData->Index24G_BW40_Base[rfPath][ch] = pwrInfo24G.IndexBW40_Base[rfPath][group];
   } else {
    pHalData->Index24G_CCK_Base[rfPath][ch] = pwrInfo24G.IndexCCK_Base[rfPath][group];
    pHalData->Index24G_BW40_Base[rfPath][ch] = pwrInfo24G.IndexBW40_Base[rfPath][group];
   }





  }

  for (TxCount = 0; TxCount < MAX_TX_COUNT; TxCount++) {
   pHalData->CCK_24G_Diff[rfPath][TxCount] = pwrInfo24G.CCK_Diff[rfPath][TxCount];
   pHalData->OFDM_24G_Diff[rfPath][TxCount] = pwrInfo24G.OFDM_Diff[rfPath][TxCount];
   pHalData->BW20_24G_Diff[rfPath][TxCount] = pwrInfo24G.BW20_Diff[rfPath][TxCount];
   pHalData->BW40_24G_Diff[rfPath][TxCount] = pwrInfo24G.BW40_Diff[rfPath][TxCount];
  }
 }


 if (!AutoLoadFail) {
  pHalData->EEPROMRegulatory = (PROMContent[EEPROM_RF_BOARD_OPTION_8723B]&0x7);
  if (PROMContent[EEPROM_RF_BOARD_OPTION_8723B] == 0xFF)
   pHalData->EEPROMRegulatory = (EEPROM_DEFAULT_BOARD_OPTION&0x7);
 } else
  pHalData->EEPROMRegulatory = 0;

 RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("EEPROMRegulatory = 0x%x\n", pHalData->EEPROMRegulatory));
}
