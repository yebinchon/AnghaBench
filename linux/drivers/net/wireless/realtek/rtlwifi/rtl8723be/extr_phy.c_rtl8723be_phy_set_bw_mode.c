
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int set_bwmode_inprogress; int current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int COMP_ERR ;
 int DBG_WARNING ;
 int RT_CANNOT_IO (struct ieee80211_hw*) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int is_hal_stop (struct rtl_hal*) ;
 int rtl8723be_phy_set_bw_mode_callback (struct ieee80211_hw*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723be_phy_set_bw_mode(struct ieee80211_hw *hw,
       enum nl80211_channel_type ch_type)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 tmp_bw = rtlphy->current_chan_bw;

 if (rtlphy->set_bwmode_inprogress)
  return;
 rtlphy->set_bwmode_inprogress = 1;
 if ((!is_hal_stop(rtlhal)) && !(RT_CANNOT_IO(hw))) {
  rtl8723be_phy_set_bw_mode_callback(hw);
 } else {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "false driver sleep or unload\n");
  rtlphy->set_bwmode_inprogress = 0;
  rtlphy->current_chan_bw = tmp_bw;
 }
}
