
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* led_control ) (struct ieee80211_hw*,int) ;} ;


 int COMP_BEACON ;
 int COMP_ERR ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int DBG_WARNING ;
 int LED_CTL_LINK ;
 int LED_CTL_NO_LINK ;
 scalar_t__ MSR ;
 int MSR_ADHOC ;
 int MSR_AP ;
 int MSR_INFRA ;
 int MSR_MASK ;
 int MSR_NOLINK ;




 scalar_t__ REG_BCNTCFG ;
 int REG_BCN_CTRL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl8821ae_disable_bcn_sub_func (struct ieee80211_hw*) ;
 int _rtl8821ae_enable_bcn_sub_func (struct ieee80211_hw*) ;
 int _rtl8821ae_resume_tx_beacon (struct ieee80211_hw*) ;
 int _rtl8821ae_stop_tx_beacon (struct ieee80211_hw*) ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;
 int stub1 (struct ieee80211_hw*,int) ;

__attribute__((used)) static int _rtl8821ae_set_media_status(struct ieee80211_hw *hw,
         enum nl80211_iftype type)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 bt_msr = rtl_read_byte(rtlpriv, MSR);
 enum led_ctl_mode ledaction = LED_CTL_NO_LINK;
 bt_msr &= 0xfc;

 rtl_write_dword(rtlpriv, REG_BCN_CTRL, 0);
 RT_TRACE(rtlpriv, COMP_BEACON, DBG_LOUD,
  "clear 0x550 when set HW_VAR_MEDIA_STATUS\n");

 if (type == 128 ||
     type == 129) {
  _rtl8821ae_stop_tx_beacon(hw);
  _rtl8821ae_enable_bcn_sub_func(hw);
 } else if (type == 131 ||
  type == 130) {
  _rtl8821ae_resume_tx_beacon(hw);
  _rtl8821ae_disable_bcn_sub_func(hw);
 } else {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "Set HW_VAR_MEDIA_STATUS: No such media status(%x).\n",
    type);
 }

 switch (type) {
 case 128:
  bt_msr |= MSR_NOLINK;
  ledaction = LED_CTL_LINK;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to NO LINK!\n");
  break;
 case 131:
  bt_msr |= MSR_ADHOC;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to Ad Hoc!\n");
  break;
 case 129:
  bt_msr |= MSR_INFRA;
  ledaction = LED_CTL_LINK;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to STA!\n");
  break;
 case 130:
  bt_msr |= MSR_AP;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Set Network type to AP!\n");
  break;
 default:
  pr_err("Network type %d not support!\n", type);
  return 1;
 }

 rtl_write_byte(rtlpriv, MSR, bt_msr);
 rtlpriv->cfg->ops->led_control(hw, ledaction);
 if ((bt_msr & MSR_MASK) == MSR_AP)
  rtl_write_byte(rtlpriv, REG_BCNTCFG + 1, 0x00);
 else
  rtl_write_byte(rtlpriv, REG_BCNTCFG + 1, 0x66);

 return 0;
}
