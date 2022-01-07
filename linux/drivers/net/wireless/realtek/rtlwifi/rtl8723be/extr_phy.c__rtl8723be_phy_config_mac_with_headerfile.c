
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 int RTL8723BEMAC_1T_ARRAY ;
 int RTL8723BEMAC_1T_ARRAYLEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int rtl8723be_phy_config_with_headerfile (struct ieee80211_hw*,int ,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte_with_val32 ;

__attribute__((used)) static bool _rtl8723be_phy_config_mac_with_headerfile(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Read rtl8723beMACPHY_Array\n");

 return rtl8723be_phy_config_with_headerfile(hw,
   RTL8723BEMAC_1T_ARRAY, RTL8723BEMAC_1T_ARRAYLEN,
   rtl_write_byte_with_val32);
}
