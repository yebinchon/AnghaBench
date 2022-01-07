
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_hal {int current_ra_rate; } ;
struct ieee80211_hw {int dummy; } ;


 int rtl8821ae_dm_update_init_rate (struct ieee80211_hw*,int) ;
 int rtl8821ae_hw_rate_to_mrate (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl8821ae_c2h_ra_report_handler(struct ieee80211_hw *hw,
         u8 *cmd_buf, u8 cmd_len)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 rate = cmd_buf[0] & 0x3F;

 rtlhal->current_ra_rate = rtl8821ae_hw_rate_to_mrate(hw, rate);

 rtl8821ae_dm_update_init_rate(hw, rate);
}
