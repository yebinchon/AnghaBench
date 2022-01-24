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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  fw_ps_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  fw_clockoff_timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_current_inpsmode; } ;
struct rtl_priv {TYPE_5__ locks; TYPE_4__ works; TYPE_3__* cfg; TYPE_1__ psc; } ;
struct rtl_hal {int fw_clk_change_in_progress; int /*<<< orphan*/  fw_ps_state; int /*<<< orphan*/  fw_ready; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PS_STATE_RF_ON_88E ; 
 int /*<<< orphan*/  HAL_DEF_WOWLAN ; 
 int /*<<< orphan*/  HW_VAR_SET_RPWM ; 
 int IMR_CPWM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int REG_HISR ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw *hw,
				     u8 rpwm_val, bool b_need_turn_off_ckk)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_hal *rtlhal = FUNC5(FUNC6(hw));
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
		FUNC9(&rtlpriv->locks.fw_ps_lock);
		if (rtlhal->fw_clk_change_in_progress) {
			while (rtlhal->fw_clk_change_in_progress) {
				FUNC10(&rtlpriv->locks.fw_ps_lock);
				count++;
				FUNC13(100);
				if (count > 1000)
					return;
				FUNC9(&rtlpriv->locks.fw_ps_lock);
			}
			FUNC10(&rtlpriv->locks.fw_ps_lock);
		} else {
			rtlhal->fw_clk_change_in_progress = false;
			FUNC10(&rtlpriv->locks.fw_ps_lock);
			break;
		}
	}

	if (FUNC1(rtlhal->fw_ps_state)) {
		rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_SET_RPWM, &rpwm_val);
		if (FUNC0(rpwm_val)) {
			isr_regaddr = REG_HISR;
			content = FUNC7(rtlpriv, isr_regaddr);
			while (!(content & IMR_CPWM) && (count < 500)) {
				FUNC13(50);
				count++;
				content = FUNC7(rtlpriv, isr_regaddr);
			}

			if (content & IMR_CPWM) {
				FUNC8(rtlpriv, isr_regaddr, 0x0100);
				rtlhal->fw_ps_state = FW_PS_STATE_RF_ON_88E;
				FUNC3(rtlpriv, COMP_POWER, DBG_LOUD,
					 "Receive CPWM INT!!! Set pHalData->FwPSState = %X\n",
					 rtlhal->fw_ps_state);
			}
		}

		FUNC9(&rtlpriv->locks.fw_ps_lock);
		rtlhal->fw_clk_change_in_progress = false;
		FUNC10(&rtlpriv->locks.fw_ps_lock);
		if (schedule_timer) {
			FUNC4(&rtlpriv->works.fw_clockoff_timer,
				  jiffies + FUNC2(10));
		}

	} else  {
		FUNC9(&rtlpriv->locks.fw_ps_lock);
		rtlhal->fw_clk_change_in_progress = false;
		FUNC10(&rtlpriv->locks.fw_ps_lock);
	}
}