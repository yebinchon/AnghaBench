
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int mode; } ;
struct rtl_phy {int current_channel; int sw_chnl_inprogress; scalar_t__ sw_chnl_step; scalar_t__ sw_chnl_stage; scalar_t__ lck_inprogress; scalar_t__ set_bwmode_inprogress; } ;
struct rtl_priv {TYPE_1__ mac80211; struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ macphymode; scalar_t__ bandset; int current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;




 scalar_t__ BAND_ON_BOTH ;
 scalar_t__ BIT (int ) ;
 int COMP_CHAN ;
 int COMP_SCAN ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int MASKDWORD ;
 int RFPGA0_XAB_RFPARAMETER ;
 scalar_t__ RT_CANNOT_IO (struct ieee80211_hw*) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ SINGLEMAC_SINGLEPHY ;
 int WARN_ONCE (int,char*,...) ;
 int _rtl92d_phy_sw_chnl_step_by_step (struct ieee80211_hw*,int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int mdelay (scalar_t__) ;
 int rtl92d_phy_switch_wirelessband (struct ieee80211_hw*,int) ;
 scalar_t__ rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u8 rtl92d_phy_sw_chnl(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u32 delay;
 u32 timeout = 1000, timecount = 0;
 u8 channel = rtlphy->current_channel;
 u32 ret_value;

 if (rtlphy->sw_chnl_inprogress)
  return 0;
 if (rtlphy->set_bwmode_inprogress)
  return 0;

 if ((is_hal_stop(rtlhal)) || (RT_CANNOT_IO(hw))) {
  RT_TRACE(rtlpriv, COMP_CHAN, DBG_LOUD,
    "sw_chnl_inprogress false driver sleep or unload\n");
  return 0;
 }
 while (rtlphy->lck_inprogress && timecount < timeout) {
  mdelay(50);
  timecount += 50;
 }
 if (rtlhal->macphymode == SINGLEMAC_SINGLEPHY &&
     rtlhal->bandset == BAND_ON_BOTH) {
  ret_value = rtl_get_bbreg(hw, RFPGA0_XAB_RFPARAMETER,
       MASKDWORD);
  if (rtlphy->current_channel > 14 && !(ret_value & BIT(0)))
   rtl92d_phy_switch_wirelessband(hw, 128);
  else if (rtlphy->current_channel <= 14 && (ret_value & BIT(0)))
   rtl92d_phy_switch_wirelessband(hw, 129);
 }
 switch (rtlhal->current_bandtype) {
 case 128:


  if (channel <= 14)
   return 0;
  WARN_ONCE((channel <= 14), "rtl8192de: 5G but channel<=14\n");
  break;
 case 129:


  if (channel > 14)
   return 0;
  WARN_ONCE((channel > 14), "rtl8192de: 2G but channel>14\n");
  break;
 default:
  WARN_ONCE(1, "rtl8192de: Invalid WirelessMode(%#x)!!\n",
     rtlpriv->mac80211.mode);
  break;
 }
 rtlphy->sw_chnl_inprogress = 1;
 if (channel == 0)
  channel = 1;
 rtlphy->sw_chnl_stage = 0;
 rtlphy->sw_chnl_step = 0;
 RT_TRACE(rtlpriv, COMP_SCAN, DBG_TRACE,
   "switch to channel%d\n", rtlphy->current_channel);

 do {
  if (!rtlphy->sw_chnl_inprogress)
   break;
  if (!_rtl92d_phy_sw_chnl_step_by_step(hw,
            rtlphy->current_channel,
      &rtlphy->sw_chnl_stage, &rtlphy->sw_chnl_step, &delay)) {
   if (delay > 0)
    mdelay(delay);
   else
    continue;
  } else {
   rtlphy->sw_chnl_inprogress = 0;
  }
  break;
 } while (1);
 RT_TRACE(rtlpriv, COMP_SCAN, DBG_TRACE, "<==\n");
 rtlphy->sw_chnl_inprogress = 0;
 return 1;
}
