
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_phy {struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int rf3wire_offset; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_RF ;
 int DBG_TRACE ;
 int MASKDWORD ;
 scalar_t__ RT_CANNOT_IO (struct ieee80211_hw*) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int ,int) ;
 int pr_err (char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;

__attribute__((used)) static void _rtl92ee_phy_rf_serial_write(struct ieee80211_hw *hw,
      enum radio_path rfpath, u32 offset,
      u32 data)
{
 u32 data_and_addr;
 u32 newoffset;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 struct bb_reg_def *pphyreg = &rtlphy->phyreg_def[rfpath];

 if (RT_CANNOT_IO(hw)) {
  pr_err("stop\n");
  return;
 }
 offset &= 0xff;
 newoffset = offset;
 data_and_addr = ((newoffset << 20) | (data & 0x000fffff)) & 0x0fffffff;
 rtl_set_bbreg(hw, pphyreg->rf3wire_offset, MASKDWORD, data_and_addr);
 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "RFW-%d Addr[0x%x]=0x%x\n", rfpath,
   pphyreg->rf3wire_offset, data_and_addr);
}
