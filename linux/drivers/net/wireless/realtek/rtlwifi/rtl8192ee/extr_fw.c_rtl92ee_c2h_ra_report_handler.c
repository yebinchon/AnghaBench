
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int ) ;
 int rtl92ee_dm_dynamic_arfb_select (struct ieee80211_hw*,int,int) ;

void rtl92ee_c2h_ra_report_handler(struct ieee80211_hw *hw,
       u8 *cmd_buf, u8 cmd_len)
{
 u8 rate = cmd_buf[0] & 0x3F;
 bool collision_state = cmd_buf[3] & BIT(0);

 rtl92ee_dm_dynamic_arfb_select(hw, rate, collision_state);
}
