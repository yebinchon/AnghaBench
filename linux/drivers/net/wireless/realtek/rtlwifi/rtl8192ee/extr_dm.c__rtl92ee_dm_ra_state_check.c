
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct rate_adaptive {scalar_t__ high_rssi_thresh_for_ra; scalar_t__ low_rssi_thresh_for_ra40m; } ;
struct rtl_priv {struct rate_adaptive ra; } ;
struct ieee80211_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int COMP_RATR ;
 int DBG_DMESG ;




 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool _rtl92ee_dm_ra_state_check(struct ieee80211_hw *hw,
           s32 rssi, u8 *ratr_state)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rate_adaptive *p_ra = &rtlpriv->ra;
 const u8 go_up_gap = 5;
 u32 high_rssithresh_for_ra = p_ra->high_rssi_thresh_for_ra;
 u32 low_rssithresh_for_ra = p_ra->low_rssi_thresh_for_ra40m;
 u8 state;







 switch (*ratr_state) {
 case 130:
 case 131:
  break;
 case 128:
  high_rssithresh_for_ra += go_up_gap;
  break;
 case 129:
  high_rssithresh_for_ra += go_up_gap;
  low_rssithresh_for_ra += go_up_gap;
  break;
 default:
  RT_TRACE(rtlpriv, COMP_RATR, DBG_DMESG,
    "wrong rssi level setting %d !\n", *ratr_state);
  break;
 }


 if (rssi > high_rssithresh_for_ra)
  state = 131;
 else if (rssi > low_rssithresh_for_ra)
  state = 128;
 else
  state = 129;

 if (*ratr_state != state) {
  *ratr_state = state;
  return 1;
 }

 return 0;
}
