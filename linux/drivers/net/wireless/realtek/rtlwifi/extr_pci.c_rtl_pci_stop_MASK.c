#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtl_ps_ctl {int rfchange_inprogress; } ;
struct TYPE_12__ {int /*<<< orphan*/  rf_ps_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  lps_change_work; } ;
struct TYPE_8__ {TYPE_1__* btc_ops; } ;
struct rtl_priv {TYPE_6__ locks; TYPE_5__* cfg; int /*<<< orphan*/  max_fw_size; TYPE_3__ works; TYPE_2__ btcoexist; } ;
struct rtl_pci {int driver_is_goingto_unload; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_11__ {TYPE_4__* ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* hw_disable ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* disable_interrupt ) (struct ieee80211_hw*) ;scalar_t__ (* get_btc_status ) () ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* btc_deinit_variables ) (struct rtl_priv*) ;int /*<<< orphan*/  (* btc_halt_notify ) (struct rtl_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_pci* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC7 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_pci *rtlpci = FUNC4(FUNC5(hw));
	struct rtl_ps_ctl *ppsc = FUNC7(FUNC6(hw));
	struct rtl_hal *rtlhal = FUNC2(FUNC6(hw));
	unsigned long flags;
	u8 rf_timeout = 0;

	if (rtlpriv->cfg->ops->get_btc_status())
		rtlpriv->btcoexist.btc_ops->btc_halt_notify(rtlpriv);

	if (rtlpriv->btcoexist.btc_ops)
		rtlpriv->btcoexist.btc_ops->btc_deinit_variables(rtlpriv);

	/*should be before disable interrupt&adapter
	 *and will do it immediately.
	 */
	FUNC8(rtlhal);

	rtlpci->driver_is_goingto_unload = true;
	rtlpriv->cfg->ops->disable_interrupt(hw);
	FUNC0(&rtlpriv->works.lps_change_work);

	FUNC9(&rtlpriv->locks.rf_ps_lock, flags);
	while (ppsc->rfchange_inprogress) {
		FUNC10(&rtlpriv->locks.rf_ps_lock, flags);
		if (rf_timeout > 100) {
			FUNC9(&rtlpriv->locks.rf_ps_lock, flags);
			break;
		}
		FUNC1(1);
		rf_timeout++;
		FUNC9(&rtlpriv->locks.rf_ps_lock, flags);
	}
	ppsc->rfchange_inprogress = true;
	FUNC10(&rtlpriv->locks.rf_ps_lock, flags);

	rtlpriv->cfg->ops->hw_disable(hw);
	/* some things are not needed if firmware not available */
	if (!rtlpriv->max_fw_size)
		return;
	rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);

	FUNC9(&rtlpriv->locks.rf_ps_lock, flags);
	ppsc->rfchange_inprogress = false;
	FUNC10(&rtlpriv->locks.rf_ps_lock, flags);

	FUNC3(hw);
}