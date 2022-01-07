
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int num_total_rfpath; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int hw_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_INIT ;
 int DBG_TRACE ;
 int HARDWARE_TYPE_RTL8812AE ;




 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int rtl8812ae_phy_config_rf_with_headerfile (struct ieee80211_hw*,int) ;
 int rtl8821ae_phy_config_rf_with_headerfile (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool _rtl8821ae_phy_rf6052_config_parafile(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 rfpath;
 bool rtstatus = 1;

 for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {
  switch (rfpath) {
  case 131: {
   if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
    rtstatus =
      rtl8812ae_phy_config_rf_with_headerfile(hw,
       (enum radio_path)rfpath);
   else
    rtstatus =
      rtl8821ae_phy_config_rf_with_headerfile(hw,
       (enum radio_path)rfpath);
   break;
   }
  case 130:
   if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
    rtstatus =
      rtl8812ae_phy_config_rf_with_headerfile(hw,
       (enum radio_path)rfpath);
   else
    rtstatus =
      rtl8821ae_phy_config_rf_with_headerfile(hw,
       (enum radio_path)rfpath);
   break;
  case 129:
   break;
  case 128:
   break;
  }

  if (!rtstatus) {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
     "Radio[%d] Fail!!\n", rfpath);
   return 0;
  }
 }


 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "\n");
 return rtstatus;
}
