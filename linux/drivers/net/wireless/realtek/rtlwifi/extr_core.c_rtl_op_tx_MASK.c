#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct rtl_priv {TYPE_1__* intf_ops; int /*<<< orphan*/  status; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* adapter_tx ) (struct ieee80211_hw*,int /*<<< orphan*/ ,struct sk_buff*,struct rtl_tcb_desc*) ;int /*<<< orphan*/  (* waitq_insert ) (struct ieee80211_hw*,int /*<<< orphan*/ ,struct sk_buff*) ;} ;

/* Variables and functions */
 scalar_t__ ERFON ; 
 int /*<<< orphan*/  RTL_STATUS_INTERFACE_START ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_tcb_desc*,int /*<<< orphan*/ ,int) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC5 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ,struct sk_buff*,struct rtl_tcb_desc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw,
		      struct ieee80211_tx_control *control,
		      struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));
	struct rtl_ps_ctl *ppsc = FUNC5(FUNC4(hw));
	struct rtl_tcb_desc tcb_desc;

	FUNC2(&tcb_desc, 0, sizeof(struct rtl_tcb_desc));

	if (FUNC9(FUNC1(rtlhal) || ppsc->rfpwr_state != ERFON))
		goto err_free;

	if (!FUNC8(RTL_STATUS_INTERFACE_START, &rtlpriv->status))
		goto err_free;

	if (!rtlpriv->intf_ops->waitq_insert(hw, control->sta, skb))
		rtlpriv->intf_ops->adapter_tx(hw, control->sta, skb, &tcb_desc);
	return;

err_free:
	FUNC0(skb);
}