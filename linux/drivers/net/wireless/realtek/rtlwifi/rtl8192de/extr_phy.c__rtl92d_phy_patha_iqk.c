
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ interfaceindex; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int FINIT ;
 int INIT_IQK ;
 int IQK_DELAY_TIME ;
 int MASKDWORD ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,...) ;
 int mdelay (int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static u8 _rtl92d_phy_patha_iqk(struct ieee80211_hw *hw, bool configpathb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u32 regeac, rege94, rege9c, regea4;
 u8 result = 0;

 RTPRINT(rtlpriv, FINIT, INIT_IQK, "Path A IQK!\n");

 RTPRINT(rtlpriv, FINIT, INIT_IQK, "Path-A IQK setting!\n");
 if (rtlhal->interfaceindex == 0) {
  rtl_set_bbreg(hw, 0xe30, MASKDWORD, 0x10008c1f);
  rtl_set_bbreg(hw, 0xe34, MASKDWORD, 0x10008c1f);
 } else {
  rtl_set_bbreg(hw, 0xe30, MASKDWORD, 0x10008c22);
  rtl_set_bbreg(hw, 0xe34, MASKDWORD, 0x10008c22);
 }
 rtl_set_bbreg(hw, 0xe38, MASKDWORD, 0x82140102);
 rtl_set_bbreg(hw, 0xe3c, MASKDWORD, 0x28160206);

 if (configpathb) {
  rtl_set_bbreg(hw, 0xe50, MASKDWORD, 0x10008c22);
  rtl_set_bbreg(hw, 0xe54, MASKDWORD, 0x10008c22);
  rtl_set_bbreg(hw, 0xe58, MASKDWORD, 0x82140102);
  rtl_set_bbreg(hw, 0xe5c, MASKDWORD, 0x28160206);
 }

 RTPRINT(rtlpriv, FINIT, INIT_IQK, "LO calibration setting!\n");
 rtl_set_bbreg(hw, 0xe4c, MASKDWORD, 0x00462911);

 RTPRINT(rtlpriv, FINIT, INIT_IQK, "One shot, path A LOK & IQK!\n");
 rtl_set_bbreg(hw, 0xe48, MASKDWORD, 0xf9000000);
 rtl_set_bbreg(hw, 0xe48, MASKDWORD, 0xf8000000);

 RTPRINT(rtlpriv, FINIT, INIT_IQK,
  "Delay %d ms for One shot, path A LOK & IQK\n",
  IQK_DELAY_TIME);
 mdelay(IQK_DELAY_TIME);

 regeac = rtl_get_bbreg(hw, 0xeac, MASKDWORD);
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xeac = 0x%x\n", regeac);
 rege94 = rtl_get_bbreg(hw, 0xe94, MASKDWORD);
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xe94 = 0x%x\n", rege94);
 rege9c = rtl_get_bbreg(hw, 0xe9c, MASKDWORD);
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xe9c = 0x%x\n", rege9c);
 regea4 = rtl_get_bbreg(hw, 0xea4, MASKDWORD);
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xea4 = 0x%x\n", regea4);
 if (!(regeac & BIT(28)) && (((rege94 & 0x03FF0000) >> 16) != 0x142) &&
     (((rege9c & 0x03FF0000) >> 16) != 0x42))
  result |= 0x01;
 else
  return result;

 if (!(regeac & BIT(27)) && (((regea4 & 0x03FF0000) >> 16) != 0x132) &&
     (((regeac & 0x03FF0000) >> 16) != 0x36))
  result |= 0x02;
 else
  RTPRINT(rtlpriv, FINIT, INIT_IQK, "Path A Rx IQK fail!!\n");
 return result;
}
