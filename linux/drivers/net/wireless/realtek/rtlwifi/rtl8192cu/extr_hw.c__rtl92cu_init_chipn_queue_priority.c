
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int WARN_ON (int) ;
 int _rtl92cu_init_chipn_one_out_ep_priority (struct ieee80211_hw*,int,int) ;
 int _rtl92cu_init_chipn_three_out_ep_priority (struct ieee80211_hw*,int,int) ;
 int _rtl92cu_init_chipn_two_out_ep_priority (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void _rtl92cu_init_chipn_queue_priority(struct ieee80211_hw *hw,
            bool wmm_enable,
            u8 out_ep_num,
            u8 queue_sel)
{
 switch (out_ep_num) {
 case 1:
  _rtl92cu_init_chipn_one_out_ep_priority(hw, wmm_enable,
       queue_sel);
  break;
 case 2:
  _rtl92cu_init_chipn_two_out_ep_priority(hw, wmm_enable,
       queue_sel);
  break;
 case 3:
  _rtl92cu_init_chipn_three_out_ep_priority(hw, wmm_enable,
         queue_sel);
  break;
 default:
  WARN_ON(1);
  break;
 }
}
