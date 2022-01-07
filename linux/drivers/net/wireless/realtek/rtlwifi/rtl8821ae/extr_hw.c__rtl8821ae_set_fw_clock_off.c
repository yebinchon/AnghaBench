
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_10__ {int fw_clockoff_timer; } ;
struct TYPE_9__ {int fw_ps_lock; } ;
struct TYPE_6__ {int inactive_pwrstate; int fw_current_inpsmode; } ;
struct rtl_priv {TYPE_5__ works; TYPE_4__ locks; TYPE_3__* cfg; TYPE_1__ psc; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_hal {size_t fw_ps_state; int fw_clk_change_in_progress; int allow_sw_to_change_hwclc; int fw_ready; } ;
struct rtl8192_tx_ring {int queue; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,size_t*) ;int (* get_hw_reg ) (struct ieee80211_hw*,int ,size_t*) ;} ;


 int ERFOFF ;
 scalar_t__ FW_PS_STATE (size_t) ;
 scalar_t__ FW_PS_STATE_RF_OFF_LOW_PWR_8821AE ;
 int HW_VAR_RF_STATE ;
 int HW_VAR_SET_RPWM ;
 scalar_t__ MSECS (int) ;
 int REG_HISR ;
 size_t RTL_PCI_MAX_TX_QUEUE_COUNT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ieee80211_hw*,int ,size_t*) ;
 int stub2 (struct ieee80211_hw*,int ,size_t*) ;

__attribute__((used)) static void _rtl8821ae_set_fw_clock_off(struct ieee80211_hw *hw,
     u8 rpwm_val)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl8192_tx_ring *ring;
 enum rf_pwrstate rtstate;
 bool b_schedule_timer = 0;
 u8 queue;

 if (!rtlhal->fw_ready)
  return;
 if (!rtlpriv->psc.fw_current_inpsmode)
  return;
 if (!rtlhal->allow_sw_to_change_hwclc)
  return;
 rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_RF_STATE, (u8 *)(&rtstate));
 if (rtstate == ERFOFF || rtlpriv->psc.inactive_pwrstate == ERFOFF)
  return;

 for (queue = 0; queue < RTL_PCI_MAX_TX_QUEUE_COUNT; queue++) {
  ring = &rtlpci->tx_ring[queue];
  if (skb_queue_len(&ring->queue)) {
   b_schedule_timer = 1;
   break;
  }
 }

 if (b_schedule_timer) {
  mod_timer(&rtlpriv->works.fw_clockoff_timer,
     jiffies + MSECS(10));
  return;
 }

 if (FW_PS_STATE(rtlhal->fw_ps_state) !=
  FW_PS_STATE_RF_OFF_LOW_PWR_8821AE) {
  spin_lock_bh(&rtlpriv->locks.fw_ps_lock);
  if (!rtlhal->fw_clk_change_in_progress) {
   rtlhal->fw_clk_change_in_progress = 1;
   spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
   rtlhal->fw_ps_state = FW_PS_STATE(rpwm_val);
   rtl_write_word(rtlpriv, REG_HISR, 0x0100);
   rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SET_RPWM,
            (u8 *)(&rpwm_val));
   spin_lock_bh(&rtlpriv->locks.fw_ps_lock);
   rtlhal->fw_clk_change_in_progress = 0;
   spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
  } else {
   spin_unlock_bh(&rtlpriv->locks.fw_ps_lock);
   mod_timer(&rtlpriv->works.fw_clockoff_timer,
      jiffies + MSECS(10));
  }
 }
}
