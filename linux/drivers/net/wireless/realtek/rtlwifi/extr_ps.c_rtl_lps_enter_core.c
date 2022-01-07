
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl_ps_ctl {int fwctrl_lps; } ;
struct TYPE_5__ {int lps_mutex; } ;
struct TYPE_4__ {scalar_t__ busytraffic; } ;
struct TYPE_6__ {scalar_t__ being_setkey; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_1__ link_info; TYPE_3__ sec; } ;
struct rtl_mac {int cnt_after_linked; scalar_t__ opmode; scalar_t__ link_state; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_LOUD ;
 int EAUTOPS ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl_lps_set_psmode (struct ieee80211_hw*,int ) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;

__attribute__((used)) static void rtl_lps_enter_core(struct ieee80211_hw *hw)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (!ppsc->fwctrl_lps)
  return;

 if (rtlpriv->sec.being_setkey)
  return;

 if (rtlpriv->link_info.busytraffic)
  return;


 if (mac->cnt_after_linked < 5)
  return;

 if (mac->opmode == NL80211_IFTYPE_ADHOC)
  return;

 if (mac->link_state != MAC80211_LINKED)
  return;

 mutex_lock(&rtlpriv->locks.lps_mutex);





 RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
   "Enter 802.11 power save mode...\n");
 rtl_lps_set_psmode(hw, EAUTOPS);

 mutex_unlock(&rtlpriv->locks.lps_mutex);
}
