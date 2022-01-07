
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int DM_REG_ANTDIV_PARA1_11N ;
 int DM_REG_ANTSEL_PIN_11N ;
 int DM_REG_ANT_MAPPING1_11N ;
 int DM_REG_BB_PWR_SAV4_11N ;
 int DM_REG_CCK_ANTDIV_PARA2_11N ;
 int DM_REG_LNA_SWITCH_11N ;
 int DM_REG_PIN_CTRL_11N ;
 int DM_REG_RX_ANT_CTRL_11N ;
 int DM_REG_TX_ANT_CTRL_11N ;
 int MAIN_ANT ;
 int MASKDWORD ;
 int MASKLWORD ;
 int rtl88e_dm_update_rx_idle_ant (struct ieee80211_hw*,int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;

__attribute__((used)) static void rtl88e_dm_trx_hw_antenna_div_init(struct ieee80211_hw *hw)
{
 u32 value32;


 value32 = rtl_get_bbreg(hw, DM_REG_ANTSEL_PIN_11N, MASKDWORD);
 rtl_set_bbreg(hw, DM_REG_ANTSEL_PIN_11N, MASKDWORD,
        value32 | (BIT(23) | BIT(25)));

 rtl_set_bbreg(hw, DM_REG_PIN_CTRL_11N, BIT(9) | BIT(8), 0);
 rtl_set_bbreg(hw, DM_REG_RX_ANT_CTRL_11N, BIT(10), 0);
 rtl_set_bbreg(hw, DM_REG_LNA_SWITCH_11N, BIT(22), 0);
 rtl_set_bbreg(hw, DM_REG_LNA_SWITCH_11N, BIT(31), 1);

 rtl_set_bbreg(hw, DM_REG_ANTDIV_PARA1_11N, MASKDWORD, 0x000000a0);

 rtl_set_bbreg(hw, DM_REG_BB_PWR_SAV4_11N, BIT(7), 1);
 rtl_set_bbreg(hw, DM_REG_CCK_ANTDIV_PARA2_11N, BIT(4), 1);

 rtl_set_bbreg(hw, DM_REG_TX_ANT_CTRL_11N, BIT(21), 0);
 rtl88e_dm_update_rx_idle_ant(hw, MAIN_ANT);
 rtl_set_bbreg(hw, DM_REG_ANT_MAPPING1_11N, MASKLWORD, 0x0201);
}
