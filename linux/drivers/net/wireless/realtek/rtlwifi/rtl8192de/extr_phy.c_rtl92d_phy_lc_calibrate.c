
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ act_scanning; } ;
struct rtl_hal {int version; int current_bandtype; } ;
struct rtl_phy {int lck_inprogress; } ;
struct rtl_priv {TYPE_1__ mac80211; struct rtl_hal rtlhal; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int FINIT ;
 int INIT_IQK ;
 scalar_t__ IS_92D_SINGLEPHY (int ) ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl92d_phy_lc_calibrate (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int udelay (int) ;

void rtl92d_phy_lc_calibrate(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = &(rtlpriv->rtlhal);
 u32 timeout = 2000, timecount = 0;

 while (rtlpriv->mac80211.act_scanning && timecount < timeout) {
  udelay(50);
  timecount += 50;
 }

 rtlphy->lck_inprogress = 1;
 RTPRINT(rtlpriv, FINIT, INIT_IQK,
  "LCK:Start!!! currentband %x delay %d ms\n",
  rtlhal->current_bandtype, timecount);
 if (IS_92D_SINGLEPHY(rtlhal->version)) {
  _rtl92d_phy_lc_calibrate(hw, 1);
 } else {

  _rtl92d_phy_lc_calibrate(hw, 0);
 }
 rtlphy->lck_inprogress = 0;
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "LCK:Finish!!!\n");
}
