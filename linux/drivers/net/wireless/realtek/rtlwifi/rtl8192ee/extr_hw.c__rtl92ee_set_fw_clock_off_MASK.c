#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_10__ {int /*<<< orphan*/  fw_clockoff_timer; } ;
struct TYPE_9__ {int /*<<< orphan*/  fw_ps_lock; } ;
struct TYPE_6__ {int inactive_pwrstate; int /*<<< orphan*/  fw_current_inpsmode; } ;
struct rtl_priv {TYPE_5__ works; TYPE_4__ locks; TYPE_3__* cfg; TYPE_1__ psc; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_hal {size_t fw_ps_state; int fw_clk_change_in_progress; int /*<<< orphan*/  allow_sw_to_change_hwclc; int /*<<< orphan*/  fw_ready; } ;
struct rtl8192_tx_ring {int /*<<< orphan*/  queue; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,size_t*) ;int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,size_t*) ;} ;

/* Variables and functions */
 int ERFOFF ; 
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FW_PS_STATE_RF_OFF_LOW_PWR ; 
 int /*<<< orphan*/  HW_VAR_RF_STATE ; 
 int /*<<< orphan*/  HW_VAR_SET_RPWM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  REG_HISR ; 
 size_t RTL_PCI_MAX_TX_QUEUE_COUNT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *hw, u8 rpwm_val)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC6(hw));
	struct rtl_pci *rtlpci = FUNC4(FUNC5(hw));
	struct rtl8192_tx_ring *ring;
	enum rf_pwrstate rtstate;
	bool b_schedule_timer = false;
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
		if (FUNC8(&ring->queue)) {
			b_schedule_timer = true;
			break;
		}
	}

	if (b_schedule_timer) {
		FUNC2(&rtlpriv->works.fw_clockoff_timer,
			  jiffies + FUNC1(10));
		return;
	}

	if (FUNC0(rtlhal->fw_ps_state) != FW_PS_STATE_RF_OFF_LOW_PWR) {
		FUNC9(&rtlpriv->locks.fw_ps_lock);
		if (!rtlhal->fw_clk_change_in_progress) {
			rtlhal->fw_clk_change_in_progress = true;
			FUNC10(&rtlpriv->locks.fw_ps_lock);
			rtlhal->fw_ps_state = FUNC0(rpwm_val);
			FUNC7(rtlpriv, REG_HISR, 0x0100);
			rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SET_RPWM,
						      (u8 *)(&rpwm_val));
			FUNC9(&rtlpriv->locks.fw_ps_lock);
			rtlhal->fw_clk_change_in_progress = false;
			FUNC10(&rtlpriv->locks.fw_ps_lock);
		} else {
			FUNC10(&rtlpriv->locks.fw_ps_lock);
			FUNC2(&rtlpriv->works.fw_clockoff_timer,
				  jiffies + FUNC1(10));
		}
	}
}