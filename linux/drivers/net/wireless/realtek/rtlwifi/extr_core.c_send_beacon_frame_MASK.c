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
struct rtl_priv {TYPE_1__* intf_ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* adapter_tx ) (struct ieee80211_hw*,int /*<<< orphan*/ *,struct sk_buff*,struct rtl_tcb_desc*) ;} ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_tcb_desc*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ *,struct sk_buff*,struct rtl_tcb_desc*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct sk_buff *skb = FUNC0(hw, vif);
	struct rtl_tcb_desc tcb_desc;

	if (skb) {
		FUNC1(&tcb_desc, 0, sizeof(struct rtl_tcb_desc));
		rtlpriv->intf_ops->adapter_tx(hw, NULL, skb, &tcb_desc);
	}
}