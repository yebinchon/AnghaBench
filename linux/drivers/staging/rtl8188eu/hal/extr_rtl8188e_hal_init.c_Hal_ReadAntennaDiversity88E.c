
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct registry_priv {int antdiv_cfg; int antdiv_type; } ;
struct hal_data_8188e {int AntDivCfg; int TRxAntDivType; } ;
struct adapter {struct registry_priv registrypriv; struct hal_data_8188e* HalData; } ;


 int CGCS_RX_HW_ANTDIV ;
 int CG_TRX_HW_ANTDIV ;
 int DBG_88E (char*,int,int) ;
 int EEPROM_DEFAULT_BOARD_OPTION ;
 size_t EEPROM_RF_ANTENNA_OPT_88E ;
 size_t EEPROM_RF_BOARD_OPTION_88E ;

void Hal_ReadAntennaDiversity88E(struct adapter *pAdapter, u8 *PROMContent, bool AutoLoadFail)
{
 struct hal_data_8188e *pHalData = pAdapter->HalData;
 struct registry_priv *registry_par = &pAdapter->registrypriv;

 if (!AutoLoadFail) {

  if (registry_par->antdiv_cfg == 2) {
   pHalData->AntDivCfg = (PROMContent[EEPROM_RF_BOARD_OPTION_88E]&0x18)>>3;
   if (PROMContent[EEPROM_RF_BOARD_OPTION_88E] == 0xFF)
    pHalData->AntDivCfg = (EEPROM_DEFAULT_BOARD_OPTION&0x18)>>3;
  } else {
   pHalData->AntDivCfg = registry_par->antdiv_cfg;
  }

  if (registry_par->antdiv_type == 0) {

   pHalData->TRxAntDivType = PROMContent[EEPROM_RF_ANTENNA_OPT_88E];
   if (pHalData->TRxAntDivType == 0xFF)
    pHalData->TRxAntDivType = CG_TRX_HW_ANTDIV;
  } else {
   pHalData->TRxAntDivType = registry_par->antdiv_type;
  }

  if (pHalData->TRxAntDivType == CG_TRX_HW_ANTDIV || pHalData->TRxAntDivType == CGCS_RX_HW_ANTDIV)
   pHalData->AntDivCfg = 1;
 } else {
  pHalData->AntDivCfg = 0;
  pHalData->TRxAntDivType = pHalData->TRxAntDivType;
 }
 DBG_88E("EEPROM : AntDivCfg = %x, TRxAntDivType = %x\n", pHalData->AntDivCfg, pHalData->TRxAntDivType);
}
