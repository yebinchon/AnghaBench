
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ CGCS_RX_HW_ANTDIV ;
 scalar_t__ CG_TRX_HW_ANTDIV ;
 scalar_t__ CG_TRX_SMART_ANTDIV ;
 int rtl88e_dm_fast_training_init (struct ieee80211_hw*) ;
 int rtl88e_dm_rx_hw_antena_div_init (struct ieee80211_hw*) ;
 int rtl88e_dm_trx_hw_antenna_div_init (struct ieee80211_hw*) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl88e_dm_antenna_div_init(struct ieee80211_hw *hw)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));

 if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV)
  rtl88e_dm_rx_hw_antena_div_init(hw);
 else if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV)
  rtl88e_dm_trx_hw_antenna_div_init(hw);
 else if (rtlefuse->antenna_div_type == CG_TRX_SMART_ANTDIV)
  rtl88e_dm_fast_training_init(hw);

}
