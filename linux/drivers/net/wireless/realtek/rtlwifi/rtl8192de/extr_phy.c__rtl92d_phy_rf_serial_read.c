
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtl_phy {struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int rf_rb; int rf_rbpi; int rfhssi_para2; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int BIT (int) ;
 int BLSSIREADADDRESS ;
 int BLSSIREADBACKDATA ;
 int BLSSIREADEDGE ;
 int COMP_RF ;
 int DBG_TRACE ;
 int MASKDWORD ;
 int RF90_PATH_A ;
 int RF90_PATH_B ;
 int RFPGA0_XA_HSSIPARAMETER1 ;
 int RFPGA0_XA_HSSIPARAMETER2 ;
 int RFPGA0_XB_HSSIPARAMETER1 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int ,int) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static u32 _rtl92d_phy_rf_serial_read(struct ieee80211_hw *hw,
          enum radio_path rfpath, u32 offset)
{

 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct bb_reg_def *pphyreg = &rtlphy->phyreg_def[rfpath];
 u32 newoffset;
 u32 tmplong, tmplong2;
 u8 rfpi_enable = 0;
 u32 retvalue;

 newoffset = offset;
 tmplong = rtl_get_bbreg(hw, RFPGA0_XA_HSSIPARAMETER2, MASKDWORD);
 if (rfpath == RF90_PATH_A)
  tmplong2 = tmplong;
 else
  tmplong2 = rtl_get_bbreg(hw, pphyreg->rfhssi_para2, MASKDWORD);
 tmplong2 = (tmplong2 & (~BLSSIREADADDRESS)) |
  (newoffset << 23) | BLSSIREADEDGE;
 rtl_set_bbreg(hw, RFPGA0_XA_HSSIPARAMETER2, MASKDWORD,
  tmplong & (~BLSSIREADEDGE));
 udelay(10);
 rtl_set_bbreg(hw, pphyreg->rfhssi_para2, MASKDWORD, tmplong2);
 udelay(50);
 udelay(50);
 rtl_set_bbreg(hw, RFPGA0_XA_HSSIPARAMETER2, MASKDWORD,
  tmplong | BLSSIREADEDGE);
 udelay(10);
 if (rfpath == RF90_PATH_A)
  rfpi_enable = (u8) rtl_get_bbreg(hw, RFPGA0_XA_HSSIPARAMETER1,
         BIT(8));
 else if (rfpath == RF90_PATH_B)
  rfpi_enable = (u8) rtl_get_bbreg(hw, RFPGA0_XB_HSSIPARAMETER1,
         BIT(8));
 if (rfpi_enable)
  retvalue = rtl_get_bbreg(hw, pphyreg->rf_rbpi,
   BLSSIREADBACKDATA);
 else
  retvalue = rtl_get_bbreg(hw, pphyreg->rf_rb,
   BLSSIREADBACKDATA);
 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE, "RFR-%d Addr[0x%x] = 0x%x\n",
   rfpath, pphyreg->rf_rb, retvalue);
 return retvalue;
}
