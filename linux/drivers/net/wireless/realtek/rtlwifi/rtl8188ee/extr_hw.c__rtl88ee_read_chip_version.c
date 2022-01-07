
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_phy {scalar_t__ rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8188e { ____Placeholder_version_8188e } version_8188e ;


 int CHIP_VENDOR_UMC ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int NORMAL_CHIP ;
 int REG_SYS_CFG ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_2T2R ;
 int RF_TYPE_2T2R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*) ;
 int TRP_VAUX_EN ;
 int TYPE_ID ;
 int VENDOR_ID ;
 scalar_t__ VERSION_TEST_CHIP_88E ;
 int VERSION_UNKNOWN ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;

__attribute__((used)) static enum version_8188e _rtl88ee_read_chip_version(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 enum version_8188e version = VERSION_UNKNOWN;
 u32 value32;

 value32 = rtl_read_dword(rtlpriv, REG_SYS_CFG);
 if (value32 & TRP_VAUX_EN) {
  version = (enum version_8188e) VERSION_TEST_CHIP_88E;
 } else {
  version = NORMAL_CHIP;
  version = version | ((value32 & TYPE_ID) ? RF_TYPE_2T2R : 0);
  version = version | ((value32 & VENDOR_ID) ?
     CHIP_VENDOR_UMC : 0);
 }

 rtlphy->rf_type = RF_1T1R;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "Chip RF Type: %s\n", (rtlphy->rf_type == RF_2T2R) ?
   "RF_2T2R" : "RF_1T1R");

 return version;
}
