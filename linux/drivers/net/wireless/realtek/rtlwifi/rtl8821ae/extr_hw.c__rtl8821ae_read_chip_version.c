
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_phy {int rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ hw_type; int hw_rof_enable; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8821ae { ____Placeholder_version_8821ae } version_8821ae ;


 int CHIP_8812 ;
 int CHIP_8821 ;
 int CHIP_VER_RTL_MASK ;
 int COMP_INIT ;
 int DBG_LOUD ;
 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 scalar_t__ HARDWARE_TYPE_RTL8821AE ;
 int NORMAL_CHIP ;
 int REG_MULTI_FUNC_CTRL ;
 int REG_SYS_CFG ;
 int RF_1T1R ;
 scalar_t__ RF_2T2R ;
 int RF_TYPE_2T2R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int TRP_VAUX_EN ;
 int VERSION_UNKNOWN ;
 int WL_HWROF_EN ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;

__attribute__((used)) static enum version_8821ae _rtl8821ae_read_chip_version(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 enum version_8821ae version = VERSION_UNKNOWN;
 u32 value32;

 value32 = rtl_read_dword(rtlpriv, REG_SYS_CFG);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "ReadChipVersion8812A 0xF0 = 0x%x\n", value32);

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
  rtlphy->rf_type = RF_2T2R;
 else if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE)
  rtlphy->rf_type = RF_1T1R;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "RF_Type is %x!!\n", rtlphy->rf_type);

 if (value32 & TRP_VAUX_EN) {
  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
   if (rtlphy->rf_type == RF_2T2R)
    version = 129;
   else
    version = 130;
  } else
   version = 128;
 } else {
  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
   u32 rtl_id = ((value32 & CHIP_VER_RTL_MASK) >> 12) + 1;

   if (rtlphy->rf_type == RF_2T2R)
    version =
     (enum version_8821ae)(CHIP_8812
     | NORMAL_CHIP |
     RF_TYPE_2T2R);
   else
    version = (enum version_8821ae)(CHIP_8812
     | NORMAL_CHIP);

   version = (enum version_8821ae)(version | (rtl_id << 12));
  } else if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
   u32 rtl_id = value32 & CHIP_VER_RTL_MASK;

   version = (enum version_8821ae)(CHIP_8821
    | NORMAL_CHIP | rtl_id);
  }
 }

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {

  value32 = rtl_read_dword(rtlpriv, REG_MULTI_FUNC_CTRL);
  rtlhal->hw_rof_enable = ((value32 & WL_HWROF_EN) ? 1 : 0);
 }

 switch (version) {
 case 130:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_TEST_CHIP_1T1R_8812\n");
  break;
 case 129:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_TEST_CHIP_2T2R_8812\n");
  break;
 case 136:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID:VERSION_NORMAL_TSMC_CHIP_1T1R_8812\n");
  break;
 case 134:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_NORMAL_TSMC_CHIP_2T2R_8812\n");
  break;
 case 135:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_NORMAL_TSMC_CHIP_1T1R_8812 C CUT\n");
  break;
 case 133:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_NORMAL_TSMC_CHIP_2T2R_8812 C CUT\n");
  break;
 case 128:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_TEST_CHIP_8821\n");
  break;
 case 132:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_NORMAL_TSMC_CHIP_8821 A CUT\n");
  break;
 case 131:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: VERSION_NORMAL_TSMC_CHIP_8821 B CUT\n");
  break;
 default:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Chip Version ID: Unknown (0x%X)\n", version);
  break;
 }

 return version;
}
