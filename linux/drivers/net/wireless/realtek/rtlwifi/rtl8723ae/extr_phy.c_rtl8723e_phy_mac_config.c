
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int _rtl8723e_phy_config_mac_with_headerfile (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

bool rtl8723e_phy_mac_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 bool rtstatus = _rtl8723e_phy_config_mac_with_headerfile(hw);
 rtl_write_byte(rtlpriv, 0x04CA, 0x0A);
 return rtstatus;
}
