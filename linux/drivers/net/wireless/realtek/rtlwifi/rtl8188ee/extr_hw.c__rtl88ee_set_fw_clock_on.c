
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_10__ {int fw_ps_lock; } ;
struct TYPE_9__ {int fw_clockoff_timer; } ;
struct TYPE_6__ {int fw_current_inpsmode; } ;
struct rtl_priv {TYPE_5__ locks; TYPE_4__ works; TYPE_3__* cfg; TYPE_1__ psc; } ;
struct rtl_hal {int fw_clk_change_in_progress; int fw_ps_state; int fw_ready; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* get_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 int COMP_POWER ;
 int DBG_LOUD ;
 scalar_t__ FW_PS_IS_ACK (int ) ;
 int FW_PS_STATE_RF_ON_88E ;
 int HAL_DEF_WOWLAN ;
 int HW_VAR_SET_RPWM ;
 int IMR_CPWM ;
 scalar_t__ IS_IN_LOW_POWER_STATE_88E (int ) ;
 scalar_t__ MSECS (int) ;
 int REG_HISR ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int) ;
 int rtl_write_word (struct rtl_priv*,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;
 int stub2 (struct ieee80211_hw*,int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl88ee_set_fw_clock_on(struct ieee80211_hw *hw,
         u8 rpwm_val, bool b_need_turn_off_ckk)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 bool b_support_remote_wake_up;
 u32 count = 0, isr_regaddr, content;
 bool schedule_timer = b_need_turn_off_ckk;
 rtlpriv->cfg->ops->get_hw_reg(hw, HAL_DEF_WOWLAN,
     (u8 *)(&b_support_remote_wake_up));

 if (!rtlhal->fw_ready)
  return;
 if (!rtlpriv->psc.fw_current_inpsmode)
  return;

 while (1) {
  spin_lock_bh(&rtlpriv->locks.fw_ps_lock);
  if (rtlhal->fw_clk_change_in_progress) {
   while (rtlhal->fw_clk_change_in_progress) {
    spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
    count++;
    udelay(100);
    if (count > 1000)
     return;
    spin_lock_bh(&rtlpriv->locks.fw_ps_lock);
   }
   spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
  } else {
   rtlhal->fw_clk_change_in_progress = 0;
   spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
   break;
  }
 }

 if (IS_IN_LOW_POWER_STATE_88E(rtlhal->fw_ps_state)) {
  rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_SET_RPWM, &rpwm_val);
  if (FW_PS_IS_ACK(rpwm_val)) {
   isr_regaddr = REG_HISR;
   content = rtl_read_dword(rtlpriv, isr_regaddr);
   while (!(content & IMR_CPWM) && (count < 500)) {
    udelay(50);
    count++;
    content = rtl_read_dword(rtlpriv, isr_regaddr);
   }

   if (content & IMR_CPWM) {
    rtl_write_word(rtlpriv, isr_regaddr, 0x0100);
    rtlhal->fw_ps_state = FW_PS_STATE_RF_ON_88E;
    RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
      "Receive CPWM INT!!! Set pHalData->FwPSState = %X\n",
      rtlhal->fw_ps_state);
   }
  }

  spin_lock_bh(&rtlpriv->locks.fw_ps_lock);
  rtlhal->fw_clk_change_in_progress = 0;
  spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
  if (schedule_timer) {
   mod_timer(&rtlpriv->works.fw_clockoff_timer,
      jiffies + MSECS(10));
  }

 } else {
  spin_lock_bh(&rtlpriv->locks.fw_ps_lock);
  rtlhal->fw_clk_change_in_progress = 0;
  spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
 }
}
