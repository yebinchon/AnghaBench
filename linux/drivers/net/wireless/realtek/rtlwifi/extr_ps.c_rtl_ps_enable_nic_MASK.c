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
struct rtl_ps_ctl {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  watchdog_timer; } ;
struct rtl_priv {TYPE_5__ works; TYPE_4__* cfg; TYPE_1__* intf_ops; } ;
struct rtl_mac {int /*<<< orphan*/  retry_long; } ;
struct rtl_hal {scalar_t__ interface; } ;
struct TYPE_7__ {int /*<<< orphan*/  chandef; } ;
struct ieee80211_hw {TYPE_2__ conf; } ;
struct TYPE_9__ {TYPE_3__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* enable_interrupt ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* set_bw_mode ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_channel_access ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* switch_channel ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* hw_init ) (struct ieee80211_hw*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* reset_trx_ring ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int /*<<< orphan*/  HW_VAR_RETRY_LIMIT ; 
 scalar_t__ INTF_PCI ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_ps_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rtl_hal*) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC7 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*) ; 

bool FUNC16(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_ps_ctl *ppsc = FUNC7(FUNC6(hw));
	struct rtl_hal *rtlhal = FUNC4(FUNC6(hw));
	struct rtl_mac *rtlmac = FUNC5(FUNC6(hw));

	/*<1> reset trx ring */
	if (rtlhal->interface == INTF_PCI)
		rtlpriv->intf_ops->reset_trx_ring(hw);

	if (FUNC3(rtlhal))
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Driver is already down!\n");

	/*<2> Enable Adapter */
	if (rtlpriv->cfg->ops->hw_init(hw))
		return false;
	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_RETRY_LIMIT,
			&rtlmac->retry_long);
	FUNC0(ppsc, RT_RF_OFF_LEVL_HALT_NIC);

	rtlpriv->cfg->ops->switch_channel(hw);
	rtlpriv->cfg->ops->set_channel_access(hw);
	rtlpriv->cfg->ops->set_bw_mode(hw,
			FUNC2(&hw->conf.chandef));

	/*<3> Enable Interrupt */
	rtlpriv->cfg->ops->enable_interrupt(hw);

	/*<enable timer> */
	FUNC8(&rtlpriv->works.watchdog_timer);

	return true;
}