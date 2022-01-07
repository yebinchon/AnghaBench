
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_ps_ctl {scalar_t__ last_delaylps_stamp_jiffies; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_LOUD ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;

__attribute__((used)) static bool rtl_get_fwlps_doze(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 u32 ps_timediff;

 ps_timediff = jiffies_to_msecs(jiffies -
           ppsc->last_delaylps_stamp_jiffies);

 if (ps_timediff < 2000) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "Delay enter Fw LPS for DHCP, ARP, or EAPOL exchanging state\n");
  return 0;
 }

 if (mac->link_state != MAC80211_LINKED)
  return 0;

 if (mac->opmode == NL80211_IFTYPE_ADHOC)
  return 0;

 return 1;
}
