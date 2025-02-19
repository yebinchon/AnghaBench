
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ undec_sm_pwdb; int useramask; } ;
struct TYPE_5__ {scalar_t__ bcn_rx_inperiod; } ;
struct rate_adaptive {int pre_ratr_state; int ratr_state; } ;
struct rtl_priv {TYPE_4__* cfg; TYPE_2__ dm; TYPE_1__ link_info; struct rate_adaptive ra; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; int bssid; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* update_rate_tbl ) (struct ieee80211_hw*,struct ieee80211_sta*,int,int) ;} ;


 int COMP_RATE ;
 int DBG_LOUD ;



 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct ieee80211_sta* rtl_find_sta (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,struct ieee80211_sta*,int,int) ;

__attribute__((used)) static void rtl8723e_dm_refresh_rate_adaptive_mask(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rate_adaptive *p_ra = &rtlpriv->ra;
 u32 low_rssithresh_for_ra, high_rssithresh_for_ra;
 struct ieee80211_sta *sta = ((void*)0);

 if (is_hal_stop(rtlhal)) {
  RT_TRACE(rtlpriv, COMP_RATE, DBG_LOUD,
    " driver is going to unload\n");
  return;
 }

 if (!rtlpriv->dm.useramask) {
  RT_TRACE(rtlpriv, COMP_RATE, DBG_LOUD,
    " driver does not control rate adaptive mask\n");
  return;
 }

 if (mac->link_state == MAC80211_LINKED &&
     mac->opmode == NL80211_IFTYPE_STATION) {
  switch (p_ra->pre_ratr_state) {
  case 130:
   high_rssithresh_for_ra = 50;
   low_rssithresh_for_ra = 20;
   break;
  case 128:
   high_rssithresh_for_ra = 55;
   low_rssithresh_for_ra = 20;
   break;
  case 129:
   high_rssithresh_for_ra = 60;
   low_rssithresh_for_ra = 25;
   break;
  default:
   high_rssithresh_for_ra = 50;
   low_rssithresh_for_ra = 20;
   break;
  }

  if (rtlpriv->link_info.bcn_rx_inperiod == 0)
   switch (p_ra->pre_ratr_state) {
   case 130:
   default:
    p_ra->ratr_state = 128;
    break;
   case 128:
   case 129:
    p_ra->ratr_state = 129;
    break;
   }
  else if (rtlpriv->dm.undec_sm_pwdb > high_rssithresh_for_ra)
   p_ra->ratr_state = 130;
  else if (rtlpriv->dm.undec_sm_pwdb > low_rssithresh_for_ra)
   p_ra->ratr_state = 128;
  else
   p_ra->ratr_state = 129;

  if (p_ra->pre_ratr_state != p_ra->ratr_state) {
   RT_TRACE(rtlpriv, COMP_RATE, DBG_LOUD,
     "RSSI = %ld\n",
     rtlpriv->dm.undec_sm_pwdb);
   RT_TRACE(rtlpriv, COMP_RATE, DBG_LOUD,
     "RSSI_LEVEL = %d\n", p_ra->ratr_state);
   RT_TRACE(rtlpriv, COMP_RATE, DBG_LOUD,
     "PreState = %d, CurState = %d\n",
     p_ra->pre_ratr_state, p_ra->ratr_state);

   rcu_read_lock();
   sta = rtl_find_sta(hw, mac->bssid);
   if (sta)
    rtlpriv->cfg->ops->update_rate_tbl(hw, sta,
          p_ra->ratr_state,
              1);
   rcu_read_unlock();

   p_ra->pre_ratr_state = p_ra->ratr_state;
  }
 }
}
