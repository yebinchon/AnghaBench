
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {scalar_t__ rx_idle_ant; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;


 int AUX_ANT_CGCS_RX ;
 int AUX_ANT_CG_TRX ;
 int BIT (int) ;
 scalar_t__ CGCS_RX_HW_ANTDIV ;
 scalar_t__ CG_TRX_HW_ANTDIV ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int DM_REG_ANTSEL_CTRL_11N ;
 int DM_REG_RESP_TX_11N ;
 int DM_REG_RX_ANT_CTRL_11N ;
 scalar_t__ MAIN_ANT ;
 int MAIN_ANT_CGCS_RX ;
 int MAIN_ANT_CG_TRX ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_dm* rtl_dm (struct rtl_priv*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int ) ;

__attribute__((used)) static void rtl88e_dm_update_rx_idle_ant(struct ieee80211_hw *hw,
      u8 ant)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));
 struct fast_ant_training *pfat_table = &rtldm->fat_table;
 u32 default_ant, optional_ant;

 if (pfat_table->rx_idle_ant != ant) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "need to update rx idle ant\n");
  if (ant == MAIN_ANT) {
   default_ant =
     (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
     MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
   optional_ant =
     (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
     AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
  } else {
   default_ant =
      (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
      AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
   optional_ant =
      (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
      MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
  }

  if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) {
   rtl_set_bbreg(hw, DM_REG_RX_ANT_CTRL_11N,
          BIT(5) | BIT(4) | BIT(3), default_ant);
   rtl_set_bbreg(hw, DM_REG_RX_ANT_CTRL_11N,
          BIT(8) | BIT(7) | BIT(6), optional_ant);
   rtl_set_bbreg(hw, DM_REG_ANTSEL_CTRL_11N,
          BIT(14) | BIT(13) | BIT(12),
          default_ant);
   rtl_set_bbreg(hw, DM_REG_RESP_TX_11N,
          BIT(6) | BIT(7), default_ant);
  } else if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV) {
   rtl_set_bbreg(hw, DM_REG_RX_ANT_CTRL_11N,
          BIT(5) | BIT(4) | BIT(3), default_ant);
   rtl_set_bbreg(hw, DM_REG_RX_ANT_CTRL_11N,
          BIT(8) | BIT(7) | BIT(6), optional_ant);
  }
 }
 pfat_table->rx_idle_ant = ant;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "RxIdleAnt %s\n",
   (ant == MAIN_ANT) ? ("MAIN_ANT") : ("AUX_ANT"));
}
