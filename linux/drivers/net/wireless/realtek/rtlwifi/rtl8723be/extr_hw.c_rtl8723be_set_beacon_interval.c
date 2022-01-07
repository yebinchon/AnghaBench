
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int beacon_interval; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BEACON ;
 int DBG_DMESG ;
 int REG_BCN_INTERVAL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int rtl8723be_disable_interrupt (struct ieee80211_hw*) ;
 int rtl8723be_enable_interrupt (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_word (struct rtl_priv*,int ,int ) ;

void rtl8723be_set_beacon_interval(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u16 bcn_interval = mac->beacon_interval;

 RT_TRACE(rtlpriv, COMP_BEACON, DBG_DMESG,
   "beacon_interval:%d\n", bcn_interval);
 rtl8723be_disable_interrupt(hw);
 rtl_write_word(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
 rtl8723be_enable_interrupt(hw);
}
