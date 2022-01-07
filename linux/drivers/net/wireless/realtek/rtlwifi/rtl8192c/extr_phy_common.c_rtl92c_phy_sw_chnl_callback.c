
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl_phy {int sw_chnl_inprogress; int sw_chnl_step; int sw_chnl_stage; int current_channel; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_SCAN ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl92c_phy_sw_chnl_step_by_step (struct ieee80211_hw*,int ,int *,int *,scalar_t__*) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int mdelay (scalar_t__) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92c_phy_sw_chnl_callback(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u32 delay;

 RT_TRACE(rtlpriv, COMP_SCAN, DBG_TRACE,
   "switch to channel%d\n", rtlphy->current_channel);
 if (is_hal_stop(rtlhal))
  return;
 do {
  if (!rtlphy->sw_chnl_inprogress)
   break;
  if (!_rtl92c_phy_sw_chnl_step_by_step
      (hw, rtlphy->current_channel, &rtlphy->sw_chnl_stage,
       &rtlphy->sw_chnl_step, &delay)) {
   if (delay > 0)
    mdelay(delay);
   else
    continue;
  } else {
   rtlphy->sw_chnl_inprogress = 0;
  }
  break;
 } while (1);
 RT_TRACE(rtlpriv, COMP_SCAN, DBG_TRACE, "\n");
}
