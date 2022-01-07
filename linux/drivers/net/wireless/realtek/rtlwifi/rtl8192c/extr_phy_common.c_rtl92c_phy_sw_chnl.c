
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int sw_chnl_inprogress; int current_channel; scalar_t__ sw_chnl_step; scalar_t__ sw_chnl_stage; scalar_t__ set_bwmode_inprogress; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_CHAN ;
 int DBG_LOUD ;
 int RT_CANNOT_IO (struct ieee80211_hw*) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int WARN_ONCE (int,char*) ;
 int is_hal_stop (struct rtl_hal*) ;
 int rtl92c_phy_sw_chnl_callback (struct ieee80211_hw*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u8 rtl92c_phy_sw_chnl(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (rtlphy->sw_chnl_inprogress)
  return 0;
 if (rtlphy->set_bwmode_inprogress)
  return 0;
 WARN_ONCE((rtlphy->current_channel > 14),
    "rtl8192c-common: WIRELESS_MODE_G but channel>14");
 rtlphy->sw_chnl_inprogress = 1;
 rtlphy->sw_chnl_stage = 0;
 rtlphy->sw_chnl_step = 0;
 if (!(is_hal_stop(rtlhal)) && !(RT_CANNOT_IO(hw))) {
  rtl92c_phy_sw_chnl_callback(hw);
  RT_TRACE(rtlpriv, COMP_CHAN, DBG_LOUD,
    "sw_chnl_inprogress false schedule workitem\n");
  rtlphy->sw_chnl_inprogress = 0;
 } else {
  RT_TRACE(rtlpriv, COMP_CHAN, DBG_LOUD,
    "sw_chnl_inprogress false driver sleep or unload\n");
  rtlphy->sw_chnl_inprogress = 0;
 }
 return 1;
}
