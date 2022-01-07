
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtl_phy {int* iqk_bb_backup; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int interfaceindex; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int FINIT ;
 int INIT_IQK ;
 int IQK_DELAY_TIME ;
 int MASKDWORD ;
 int RFPGA0_XAB_RFINTERFACESW ;
 int RFPGA0_XA_RFINTERFACEOE ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,...) ;
 int mdelay (int) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static u8 _rtl92d_phy_patha_iqk_5g_normal(struct ieee80211_hw *hw,
       bool configpathb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u32 regeac, rege94, rege9c, regea4;
 u8 result = 0;
 u8 i;
 u8 retrycount = 2;
 u32 TXOKBIT = BIT(28), RXOKBIT = BIT(27);

 if (rtlhal->interfaceindex == 1) {
  TXOKBIT = BIT(31);
  RXOKBIT = BIT(30);
 }
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "Path A IQK!\n");

 RTPRINT(rtlpriv, FINIT, INIT_IQK, "Path-A IQK setting!\n");
 rtl_set_bbreg(hw, 0xe30, MASKDWORD, 0x18008c1f);
 rtl_set_bbreg(hw, 0xe34, MASKDWORD, 0x18008c1f);
 rtl_set_bbreg(hw, 0xe38, MASKDWORD, 0x82140307);
 rtl_set_bbreg(hw, 0xe3c, MASKDWORD, 0x68160960);

 if (configpathb) {
  rtl_set_bbreg(hw, 0xe50, MASKDWORD, 0x18008c2f);
  rtl_set_bbreg(hw, 0xe54, MASKDWORD, 0x18008c2f);
  rtl_set_bbreg(hw, 0xe58, MASKDWORD, 0x82110000);
  rtl_set_bbreg(hw, 0xe5c, MASKDWORD, 0x68110000);
 }

 RTPRINT(rtlpriv, FINIT, INIT_IQK, "LO calibration setting!\n");
 rtl_set_bbreg(hw, 0xe4c, MASKDWORD, 0x00462911);

 rtl_set_bbreg(hw, RFPGA0_XAB_RFINTERFACESW, MASKDWORD, 0x07000f60);
 rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE, MASKDWORD, 0x66e60e30);
 for (i = 0; i < retrycount; i++) {

  RTPRINT(rtlpriv, FINIT, INIT_IQK,
   "One shot, path A LOK & IQK!\n");
  rtl_set_bbreg(hw, 0xe48, MASKDWORD, 0xf9000000);
  rtl_set_bbreg(hw, 0xe48, MASKDWORD, 0xf8000000);

  RTPRINT(rtlpriv, FINIT, INIT_IQK,
   "Delay %d ms for One shot, path A LOK & IQK.\n",
   IQK_DELAY_TIME);
  mdelay(IQK_DELAY_TIME * 10);

  regeac = rtl_get_bbreg(hw, 0xeac, MASKDWORD);
  RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xeac = 0x%x\n", regeac);
  rege94 = rtl_get_bbreg(hw, 0xe94, MASKDWORD);
  RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xe94 = 0x%x\n", rege94);
  rege9c = rtl_get_bbreg(hw, 0xe9c, MASKDWORD);
  RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xe9c = 0x%x\n", rege9c);
  regea4 = rtl_get_bbreg(hw, 0xea4, MASKDWORD);
  RTPRINT(rtlpriv, FINIT, INIT_IQK, "0xea4 = 0x%x\n", regea4);
  if (!(regeac & TXOKBIT) &&
       (((rege94 & 0x03FF0000) >> 16) != 0x142)) {
   result |= 0x01;
  } else {
   RTPRINT(rtlpriv, FINIT, INIT_IQK,
    "Path A Tx IQK fail!!\n");
   continue;
  }


  if (!(regeac & RXOKBIT) &&
      (((regea4 & 0x03FF0000) >> 16) != 0x132)) {
   result |= 0x02;
   break;
  } else {
   RTPRINT(rtlpriv, FINIT, INIT_IQK,
    "Path A Rx IQK fail!!\n");
  }
 }

 rtl_set_bbreg(hw, RFPGA0_XAB_RFINTERFACESW, MASKDWORD,
        rtlphy->iqk_bb_backup[0]);
 rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE, MASKDWORD,
        rtlphy->iqk_bb_backup[1]);
 return result;
}
