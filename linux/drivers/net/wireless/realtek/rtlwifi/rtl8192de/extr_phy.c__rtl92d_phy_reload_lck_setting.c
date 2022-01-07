
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ current_bandtype; scalar_t__ macphymode; int interfaceindex; int during_mac1init_radioa; int during_mac0init_radiob; int version; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BAND_ON_2_4G ;
 scalar_t__ BAND_ON_5G ;
 int COMP_CMD ;
 int DBG_LOUD ;
 scalar_t__ DUALMAC_DUALPHY ;
 int FINIT ;
 int INIT_IQK ;
 scalar_t__ IS_92D_SINGLEPHY (int ) ;
 int RF90_PATH_A ;
 int RF90_PATH_B ;
 int RF_SYN_G4 ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl92d_phy_enable_rf_env (struct ieee80211_hw*,int,int*) ;
 int _rtl92d_phy_restore_rf_env (struct ieee80211_hw*,int,int*) ;
 int* curveindex_2g ;
 int* curveindex_5g ;
 int rtl92d_phy_enable_anotherphy (struct ieee80211_hw*,int) ;
 int rtl92d_phy_powerdown_anotherphy (struct ieee80211_hw*,int) ;
 int rtl_get_rfreg (struct ieee80211_hw*,int,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,int ,int,int) ;

__attribute__((used)) static void _rtl92d_phy_reload_lck_setting(struct ieee80211_hw *hw,
  u8 channel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 erfpath = rtlpriv->rtlhal.current_bandtype ==
  BAND_ON_5G ? RF90_PATH_A :
  IS_92D_SINGLEPHY(rtlpriv->rtlhal.version) ?
  RF90_PATH_B : RF90_PATH_A;
 u32 u4tmp = 0, u4regvalue = 0;
 bool bneed_powerdown_radio = 0;

 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "path %d\n", erfpath);
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "band type = %d\n",
  rtlpriv->rtlhal.current_bandtype);
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "channel = %d\n", channel);
 if (rtlpriv->rtlhal.current_bandtype == BAND_ON_5G) {
  u4tmp = curveindex_5g[channel-1];
  RTPRINT(rtlpriv, FINIT, INIT_IQK,
   "ver 1 set RF-A, 5G,	0x28 = 0x%x !!\n", u4tmp);
  if (rtlpriv->rtlhal.macphymode == DUALMAC_DUALPHY &&
   rtlpriv->rtlhal.interfaceindex == 1) {
   bneed_powerdown_radio =
    rtl92d_phy_enable_anotherphy(hw, 0);
   rtlpriv->rtlhal.during_mac1init_radioa = 1;

   if (bneed_powerdown_radio)
    _rtl92d_phy_enable_rf_env(hw, erfpath,
         &u4regvalue);
  }
  rtl_set_rfreg(hw, erfpath, RF_SYN_G4, 0x3f800, u4tmp);
  if (bneed_powerdown_radio)
   _rtl92d_phy_restore_rf_env(hw, erfpath, &u4regvalue);
  if (rtlpriv->rtlhal.during_mac1init_radioa)
   rtl92d_phy_powerdown_anotherphy(hw, 0);
 } else if (rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G) {
  u4tmp = curveindex_2g[channel-1];
  RTPRINT(rtlpriv, FINIT, INIT_IQK,
   "ver 3 set RF-B, 2G, 0x28 = 0x%x !!\n", u4tmp);
  if (rtlpriv->rtlhal.macphymode == DUALMAC_DUALPHY &&
   rtlpriv->rtlhal.interfaceindex == 0) {
   bneed_powerdown_radio =
    rtl92d_phy_enable_anotherphy(hw, 1);
   rtlpriv->rtlhal.during_mac0init_radiob = 1;
   if (bneed_powerdown_radio)
    _rtl92d_phy_enable_rf_env(hw, erfpath,
         &u4regvalue);
  }
  rtl_set_rfreg(hw, erfpath, RF_SYN_G4, 0x3f800, u4tmp);
  RTPRINT(rtlpriv, FINIT, INIT_IQK,
   "ver 3 set RF-B, 2G, 0x28 = 0x%x !!\n",
   rtl_get_rfreg(hw, erfpath, RF_SYN_G4, 0x3f800));
  if (bneed_powerdown_radio)
   _rtl92d_phy_restore_rf_env(hw, erfpath, &u4regvalue);
  if (rtlpriv->rtlhal.during_mac0init_radiob)
   rtl92d_phy_powerdown_anotherphy(hw, 1);
 }
 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "<====\n");
}
