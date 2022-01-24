#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct TYPE_8__ {int /*<<< orphan*/  conf_mutex; } ;
struct rtl_priv {TYPE_4__ locks; TYPE_3__* intf_ops; TYPE_2__* cfg; } ;
struct rtl_mac {int /*<<< orphan*/  vendor; int /*<<< orphan*/  bssid; int /*<<< orphan*/  link_state; } ;
struct rtl_hal {scalar_t__ enter_pnp_sleep; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* adapter_stop ) (struct ieee80211_hw*) ;} ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ ERFOFF ; 
 int /*<<< orphan*/  HAL_DEF_WOWLAN ; 
 int /*<<< orphan*/  MAC80211_NOLINK ; 
 int /*<<< orphan*/  PEER_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int) ; 
 struct rtl_hal* FUNC6 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC8 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC10 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_mac *mac = FUNC8(FUNC9(hw));
	struct rtl_hal *rtlhal = FUNC6(FUNC9(hw));
	struct rtl_ps_ctl *ppsc = FUNC10(FUNC9(hw));
	bool support_remote_wakeup = false;

	if (FUNC1(rtlhal))
		return;

	rtlpriv->cfg->ops->get_hw_reg(hw, HAL_DEF_WOWLAN,
				      (u8 *)(&support_remote_wakeup));
	/* here is must, because adhoc do stop and start,
	 * but stop with RFOFF may cause something wrong,
	 * like adhoc TP
	 */
	if (FUNC13(ppsc->rfpwr_state == ERFOFF))
		FUNC7(hw);

	FUNC2(&rtlpriv->locks.conf_mutex);
	/* if wowlan supported, DON'T clear connected info */
	if (!(support_remote_wakeup &&
	      rtlhal->enter_pnp_sleep)) {
		mac->link_state = MAC80211_NOLINK;
		FUNC0(mac->bssid);
		mac->vendor = PEER_UNKNOWN;

		/* reset sec info */
		FUNC4(hw);

		FUNC5(hw, false);
	}
	rtlpriv->intf_ops->adapter_stop(hw);

	FUNC3(&rtlpriv->locks.conf_mutex);
}