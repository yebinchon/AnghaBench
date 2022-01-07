
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int beacon_interval; } ;
struct ieee80211_hw {int dummy; } ;


 int BCN_INTERVAL ;
 int rtl92s_phy_set_beacon_hwreg (struct ieee80211_hw*,int ) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_word (struct rtl_priv*,int ,int ) ;

void rtl92se_set_beacon_interval(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u16 bcn_interval = mac->beacon_interval;


 rtl_write_word(rtlpriv, BCN_INTERVAL, bcn_interval);

 rtl92s_phy_set_beacon_hwreg(hw, bcn_interval);
}
