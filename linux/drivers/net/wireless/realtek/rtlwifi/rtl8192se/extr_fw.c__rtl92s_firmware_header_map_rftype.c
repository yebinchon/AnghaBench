
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;





 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static u8 _rtl92s_firmware_header_map_rftype(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 switch (rtlphy->rf_type) {
 case 130:
  return 0x11;
 case 129:
  return 0x12;
 case 128:
  return 0x22;
 default:
  pr_err("Unknown RF type(%x)\n", rtlphy->rf_type);
  break;
 }
 return 0x22;
}
