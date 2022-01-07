
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_phy {scalar_t__ rf_type; int polarity_ctl; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8723e { ____Placeholder_version_8723e } version_8723e ;


 int BT_FUNC ;
 int CHIP_8723 ;
 int CHIP_VENDOR_UMC ;
 int CHIP_VER_RTL_MASK ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 scalar_t__ IS_8723_SERIES (int) ;
 scalar_t__ IS_CHIP_VENDOR_UMC (int) ;
 scalar_t__ NORMAL_CHIP ;
 int REG_GPIO_OUTSTS ;
 int REG_MULTI_FUNC_CTRL ;
 int REG_SYS_CFG ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_2T2R ;
 int RF_RL_ID ;
 int RT_POLARITY_HIGH_ACT ;
 int RT_POLARITY_LOW_ACT ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int TRP_VAUX_EN ;
 int VENDOR_ID ;



 int WL_HWPDN_SL ;
 int pr_err (char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;

__attribute__((used)) static enum version_8723e _rtl8723e_read_chip_version(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 enum version_8723e version = 0x0000;
 u32 value32;

 value32 = rtl_read_dword(rtlpriv, REG_SYS_CFG);
 if (value32 & TRP_VAUX_EN) {
  version = (enum version_8723e)(version |
   ((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : 0));

  version = (enum version_8723e)(version |
   ((value32 & BT_FUNC) ? CHIP_8723 : 0));

 } else {

  version = (enum version_8723e) NORMAL_CHIP;
  version = (enum version_8723e)(version |
   ((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : 0));

  version = (enum version_8723e)(version |
   ((value32 & BT_FUNC) ? CHIP_8723 : 0));
  if (IS_CHIP_VENDOR_UMC(version))
   version = (enum version_8723e)(version |
   ((value32 & CHIP_VER_RTL_MASK)));
  if (IS_8723_SERIES(version)) {
   value32 = rtl_read_dword(rtlpriv, REG_GPIO_OUTSTS);

   version = (enum version_8723e)(version |
    ((value32 & RF_RL_ID)>>20));
  }
 }

 if (IS_8723_SERIES(version)) {
  value32 = rtl_read_dword(rtlpriv, REG_MULTI_FUNC_CTRL);
  rtlphy->polarity_ctl = ((value32 & WL_HWPDN_SL) ?
     RT_POLARITY_HIGH_ACT :
     RT_POLARITY_LOW_ACT);
 }
 switch (version) {
 case 128:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Chip Version ID: VERSION_TEST_UMC_CHIP_8723.\n");
   break;
 case 130:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_A_CUT.\n");
  break;
 case 129:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_B_CUT.\n");
  break;
 default:
  pr_err("Chip Version ID: Unknown. Bug?\n");
  break;
 }

 if (IS_8723_SERIES(version))
  rtlphy->rf_type = RF_1T1R;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Chip RF Type: %s\n",
  (rtlphy->rf_type == RF_2T2R) ? "RF_2T2R" : "RF_1T1R");

 return version;
}
