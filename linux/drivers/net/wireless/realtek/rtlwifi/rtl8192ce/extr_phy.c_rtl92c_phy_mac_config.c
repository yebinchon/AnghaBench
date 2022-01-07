
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int IS_92C_SERIAL (int ) ;
 int _rtl92c_phy_config_mac_with_headerfile (struct ieee80211_hw*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

bool rtl92c_phy_mac_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 bool is92c = IS_92C_SERIAL(rtlhal->version);
 bool rtstatus = _rtl92c_phy_config_mac_with_headerfile(hw);

 if (is92c)
  rtl_write_byte(rtlpriv, 0x14, 0x71);
 else
  rtl_write_byte(rtlpriv, 0x04CA, 0x0A);
 return rtstatus;
}
