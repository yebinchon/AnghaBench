
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_hal {int oem_id; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_ERR ;
 int COMP_INIT ;
 int DBG_LOUD ;




 int RTL8723BE_RADIOA_1TARRAY ;
 int RTL8723BE_RADIOA_1TARRAYLEN ;
 int RT_CID_819X_HP ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int _rtl8723be_config_rf_radio_a (struct ieee80211_hw*,int,int) ;
 int rtl8723be_phy_config_with_headerfile (struct ieee80211_hw*,int ,int ,int (*) (struct ieee80211_hw*,int,int)) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl8723be_phy_config_rf_with_headerfile(struct ieee80211_hw *hw,
          enum radio_path rfpath)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 bool ret = 1;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
 switch (rfpath) {
 case 131:
  ret = rtl8723be_phy_config_with_headerfile(hw,
    RTL8723BE_RADIOA_1TARRAY,
    RTL8723BE_RADIOA_1TARRAYLEN,
    _rtl8723be_config_rf_radio_a);

  if (rtlhal->oem_id == RT_CID_819X_HP)
   _rtl8723be_config_rf_radio_a(hw, 0x52, 0x7E4BD);
  break;
 case 130:
 case 129:
  break;
 case 128:
  RT_TRACE(rtlpriv, COMP_ERR, DBG_LOUD,
    "switch case %#x not processed\n", rfpath);
  break;
 }
 return ret;
}
