
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ state; } ;
struct mlme_ext_priv {TYPE_1__ sitesurvey_res; } ;
struct dm_priv {scalar_t__ DynamicTxHighPowerLvl; } ;
struct hal_data_8188e {scalar_t__ EEPROMRegulatory; int** MCSTxPowerLevelOriginalOffset; int odmpriv; struct dm_priv dmpriv; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct hal_data_8188e* HalData; } ;


 size_t RF6052_MAX_TX_PWR ;
 size_t RF_PATH_A ;
 size_t RF_PATH_B ;
 scalar_t__ SCAN_PROCESS ;
 scalar_t__ TxHighPwrLevel_Level1 ;
 scalar_t__ TxHighPwrLevel_Level2 ;
 int bMaskByte0 ;
 int bMaskByte1 ;
 int phy_set_bb_reg (struct adapter*,int ,int,int) ;
 int rTxAGC_A_CCK1_Mcs32 ;
 int rTxAGC_B_CCK11_A_CCK2_11 ;
 int rTxAGC_B_CCK1_55_Mcs32 ;
 int rtl88eu_dm_txpower_track_adjust (int *,int,size_t*,int*) ;

void rtl88eu_phy_rf6052_set_cck_txpower(struct adapter *adapt, u8 *powerlevel)
{
 struct hal_data_8188e *hal_data = adapt->HalData;
 struct dm_priv *pdmpriv = &hal_data->dmpriv;
 struct mlme_ext_priv *pmlmeext = &adapt->mlmeextpriv;
 u32 tx_agc[2] = {0, 0}, tmpval = 0, pwrtrac_value;
 u8 idx1, idx2;
 u8 *ptr;
 u8 direction;

 if (pmlmeext->sitesurvey_res.state == SCAN_PROCESS) {
  tx_agc[RF_PATH_A] = 0x3f3f3f3f;
  tx_agc[RF_PATH_B] = 0x3f3f3f3f;
  for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
   tx_agc[idx1] = powerlevel[idx1] |
          (powerlevel[idx1]<<8) |
          (powerlevel[idx1]<<16) |
          (powerlevel[idx1]<<24);
  }
 } else {
  if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level1) {
   tx_agc[RF_PATH_A] = 0x10101010;
   tx_agc[RF_PATH_B] = 0x10101010;
  } else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_Level2) {
   tx_agc[RF_PATH_A] = 0x00000000;
   tx_agc[RF_PATH_B] = 0x00000000;
  } else {
   for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
    tx_agc[idx1] = powerlevel[idx1] |
            (powerlevel[idx1]<<8) |
            (powerlevel[idx1]<<16) |
            (powerlevel[idx1]<<24);
   }
   if (hal_data->EEPROMRegulatory == 0) {
    tmpval = hal_data->MCSTxPowerLevelOriginalOffset[0][6] +
      (hal_data->MCSTxPowerLevelOriginalOffset[0][7]<<8);
    tx_agc[RF_PATH_A] += tmpval;

    tmpval = hal_data->MCSTxPowerLevelOriginalOffset[0][14] +
      (hal_data->MCSTxPowerLevelOriginalOffset[0][15]<<24);
    tx_agc[RF_PATH_B] += tmpval;
   }
  }
 }
 for (idx1 = RF_PATH_A; idx1 <= RF_PATH_B; idx1++) {
  ptr = (u8 *)(&(tx_agc[idx1]));
  for (idx2 = 0; idx2 < 4; idx2++) {
   if (*ptr > RF6052_MAX_TX_PWR)
    *ptr = RF6052_MAX_TX_PWR;
   ptr++;
  }
 }
 rtl88eu_dm_txpower_track_adjust(&hal_data->odmpriv, 1, &direction,
     &pwrtrac_value);

 if (direction == 1) {

  tx_agc[0] += pwrtrac_value;
  tx_agc[1] += pwrtrac_value;
 } else if (direction == 2) {

  tx_agc[0] -= pwrtrac_value;
  tx_agc[1] -= pwrtrac_value;
 }


 tmpval = tx_agc[RF_PATH_A]&0xff;
 phy_set_bb_reg(adapt, rTxAGC_A_CCK1_Mcs32, bMaskByte1, tmpval);
 tmpval = tx_agc[RF_PATH_A]>>8;
 phy_set_bb_reg(adapt, rTxAGC_B_CCK11_A_CCK2_11, 0xffffff00, tmpval);


 tmpval = tx_agc[RF_PATH_B]>>24;
 phy_set_bb_reg(adapt, rTxAGC_B_CCK11_A_CCK2_11, bMaskByte0, tmpval);
 tmpval = tx_agc[RF_PATH_B]&0x00ffffff;
 phy_set_bb_reg(adapt, rTxAGC_B_CCK1_55_Mcs32, 0xffffff00, tmpval);
}
