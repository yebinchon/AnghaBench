
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int iqk_lock; } ;
struct rtl_phy {int lck_inprogress; long reg_e94; long reg_e9c; long reg_eb4; long reg_ebc; int iqk_bb_backup; TYPE_1__* iqk_matrix; int current_channel; } ;
struct rtl_priv {TYPE_2__ locks; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {long** value; int iqk_done; } ;


 int IQK_MATRIX_REG_NUM ;
 int MASKDWORD ;
 int ROFDM0_AGCRSSITABLE ;
 int ROFDM0_ECCATHRESHOLD ;
 int ROFDM0_RXIQEXTANTA ;
 int ROFDM0_XARXIQIMBALANCE ;
 int ROFDM0_XATXIQIMBALANCE ;
 int ROFDM0_XBRXIQIMBALANCE ;
 int ROFDM0_XBTXIQIMBALANCE ;
 int ROFDM0_XCTXAFE ;
 int ROFDM0_XDTXAFE ;
 int _get_right_chnl_place_for_iqk (int ) ;
 int _rtl8723be_phy_iq_calibrate (struct ieee80211_hw*,long**,int,int) ;
 int _rtl8723be_phy_path_b_fill_iqk_matrix (struct ieee80211_hw*,int,long**,int,int) ;
 int _rtl8723be_phy_simularity_compare (struct ieee80211_hw*,long**,int,int) ;
 int rtl8723_phy_path_a_fill_iqk_matrix (struct ieee80211_hw*,int,long**,int,int) ;
 int rtl8723_phy_reload_adda_registers (struct ieee80211_hw*,int *,int ,int) ;
 int rtl8723_save_adda_registers (struct ieee80211_hw*,int *,int ,int) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rtl8723be_phy_iq_calibrate(struct ieee80211_hw *hw, bool b_recovery)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 long result[4][8];
 u8 i, final_candidate, idx;
 bool b_patha_ok, b_pathb_ok;
 long reg_e94, reg_e9c, reg_ea4, reg_eac, reg_eb4, reg_ebc, reg_ec4;
 long reg_ecc, reg_tmp = 0;
 bool is12simular, is13simular, is23simular;
 u32 iqk_bb_reg[9] = {
  ROFDM0_XARXIQIMBALANCE,
  ROFDM0_XBRXIQIMBALANCE,
  ROFDM0_ECCATHRESHOLD,
  ROFDM0_AGCRSSITABLE,
  ROFDM0_XATXIQIMBALANCE,
  ROFDM0_XBTXIQIMBALANCE,
  ROFDM0_XCTXAFE,
  ROFDM0_XDTXAFE,
  ROFDM0_RXIQEXTANTA
 };
 u32 path_sel_bb = 0;

 if (rtlphy->lck_inprogress)
  return;

 spin_lock(&rtlpriv->locks.iqk_lock);
 rtlphy->lck_inprogress = 1;
 spin_unlock(&rtlpriv->locks.iqk_lock);

 if (b_recovery) {
  rtl8723_phy_reload_adda_registers(hw, iqk_bb_reg,
        rtlphy->iqk_bb_backup, 9);
  goto label_done;
 }

 path_sel_bb = rtl_get_bbreg(hw, 0x948, MASKDWORD);


 for (i = 0; i < 8; i++) {
  result[0][i] = 0;
  result[1][i] = 0;
  result[2][i] = 0;
  result[3][i] = 0;
 }
 final_candidate = 0xff;
 b_patha_ok = 0;
 b_pathb_ok = 0;
 is12simular = 0;
 is23simular = 0;
 is13simular = 0;
 for (i = 0; i < 3; i++) {
  _rtl8723be_phy_iq_calibrate(hw, result, i, 1);
  if (i == 1) {
   is12simular = _rtl8723be_phy_simularity_compare(hw,
         result,
         0, 1);
   if (is12simular) {
    final_candidate = 0;
    break;
   }
  }
  if (i == 2) {
   is13simular = _rtl8723be_phy_simularity_compare(hw,
         result,
         0, 2);
   if (is13simular) {
    final_candidate = 0;
    break;
   }
   is23simular = _rtl8723be_phy_simularity_compare(hw,
         result,
         1, 2);
   if (is23simular) {
    final_candidate = 1;
   } else {
    for (i = 0; i < 8; i++)
     reg_tmp += result[3][i];

    if (reg_tmp != 0)
     final_candidate = 3;
    else
     final_candidate = 0xFF;
   }
  }
 }
 for (i = 0; i < 4; i++) {
  reg_e94 = result[i][0];
  reg_e9c = result[i][1];
  reg_ea4 = result[i][2];
  reg_eac = result[i][3];
  reg_eb4 = result[i][4];
  reg_ebc = result[i][5];
  reg_ec4 = result[i][6];
  reg_ecc = result[i][7];
 }
 if (final_candidate != 0xff) {
  reg_e94 = result[final_candidate][0];
  rtlphy->reg_e94 = reg_e94;
  reg_e9c = result[final_candidate][1];
  rtlphy->reg_e9c = reg_e9c;
  reg_ea4 = result[final_candidate][2];
  reg_eac = result[final_candidate][3];
  reg_eb4 = result[final_candidate][4];
  rtlphy->reg_eb4 = reg_eb4;
  reg_ebc = result[final_candidate][5];
  rtlphy->reg_ebc = reg_ebc;
  reg_ec4 = result[final_candidate][6];
  reg_ecc = result[final_candidate][7];
  b_patha_ok = 1;
  b_pathb_ok = 1;
 } else {
  rtlphy->reg_e94 = 0x100;
  rtlphy->reg_eb4 = 0x100;
  rtlphy->reg_e9c = 0x0;
  rtlphy->reg_ebc = 0x0;
 }
 if (reg_e94 != 0)
  rtl8723_phy_path_a_fill_iqk_matrix(hw, b_patha_ok, result,
         final_candidate,
         (reg_ea4 == 0));
 if (reg_eb4 != 0)
  _rtl8723be_phy_path_b_fill_iqk_matrix(hw, b_pathb_ok, result,
            final_candidate,
            (reg_ec4 == 0));

 idx = _get_right_chnl_place_for_iqk(rtlphy->current_channel);

 if (final_candidate < 4) {
  for (i = 0; i < IQK_MATRIX_REG_NUM; i++)
   rtlphy->iqk_matrix[idx].value[0][i] =
      result[final_candidate][i];
  rtlphy->iqk_matrix[idx].iqk_done = 1;

 }
 rtl8723_save_adda_registers(hw, iqk_bb_reg,
        rtlphy->iqk_bb_backup, 9);

 rtl_set_bbreg(hw, 0x948, MASKDWORD, path_sel_bb);


label_done:
 spin_lock(&rtlpriv->locks.iqk_lock);
 rtlphy->lck_inprogress = 0;
 spin_unlock(&rtlpriv->locks.iqk_lock);
}
