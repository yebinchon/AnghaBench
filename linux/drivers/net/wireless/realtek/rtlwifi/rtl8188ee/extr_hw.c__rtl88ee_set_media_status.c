
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ link_state; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* led_control ) (struct ieee80211_hw*,int) ;} ;


 int COMP_ERR ;
 int COMP_INIT ;
 int DBG_TRACE ;
 int DBG_WARNING ;
 int LED_CTL_LINK ;
 int LED_CTL_NO_LINK ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ MSR ;
 int MSR_ADHOC ;
 int MSR_AP ;
 int MSR_INFRA ;
 int MSR_NOLINK ;





 scalar_t__ REG_BCNTCFG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl88ee_disable_bcn_sub_func (struct ieee80211_hw*) ;
 int _rtl88ee_enable_bcn_sub_func (struct ieee80211_hw*) ;
 int _rtl88ee_resume_tx_beacon (struct ieee80211_hw*) ;
 int _rtl88ee_stop_tx_beacon (struct ieee80211_hw*) ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int stub1 (struct ieee80211_hw*,int) ;

__attribute__((used)) static int _rtl88ee_set_media_status(struct ieee80211_hw *hw,
         enum nl80211_iftype type)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 bt_msr = rtl_read_byte(rtlpriv, MSR) & 0xfc;
 enum led_ctl_mode ledaction = LED_CTL_NO_LINK;
 u8 mode = MSR_NOLINK;

 switch (type) {
 case 128:
  mode = MSR_NOLINK;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to NO LINK!\n");
  break;
 case 132:
 case 130:
  mode = MSR_ADHOC;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to Ad Hoc!\n");
  break;
 case 129:
  mode = MSR_INFRA;
  ledaction = LED_CTL_LINK;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to STA!\n");
  break;
 case 131:
  mode = MSR_AP;
  ledaction = LED_CTL_LINK;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to AP!\n");
  break;
 default:
  pr_err("Network type %d not support!\n", type);
  return 1;
  break;
 }







 if (mode != MSR_AP && rtlpriv->mac80211.link_state < MAC80211_LINKED) {
  mode = MSR_NOLINK;
  ledaction = LED_CTL_NO_LINK;
 }

 if (mode == MSR_NOLINK || mode == MSR_INFRA) {
  _rtl88ee_stop_tx_beacon(hw);
  _rtl88ee_enable_bcn_sub_func(hw);
 } else if (mode == MSR_ADHOC || mode == MSR_AP) {
  _rtl88ee_resume_tx_beacon(hw);
  _rtl88ee_disable_bcn_sub_func(hw);
 } else {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "Set HW_VAR_MEDIA_STATUS: No such media status(%x).\n",
    mode);
 }

 rtl_write_byte(rtlpriv, MSR, bt_msr | mode);
 rtlpriv->cfg->ops->led_control(hw, ledaction);
 if (mode == MSR_AP)
  rtl_write_byte(rtlpriv, REG_BCNTCFG + 1, 0x00);
 else
  rtl_write_byte(rtlpriv, REG_BCNTCFG + 1, 0x66);
 return 0;
}
