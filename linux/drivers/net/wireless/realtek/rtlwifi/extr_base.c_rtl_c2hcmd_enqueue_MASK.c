#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  c2hcmd_wq; int /*<<< orphan*/  rtl_wq; } ;
struct TYPE_4__ {int /*<<< orphan*/  c2hcmd_lock; } ;
struct rtl_priv {TYPE_1__ works; TYPE_2__ locks; int /*<<< orphan*/  c2hcmd_queue; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	unsigned long flags;

	if (FUNC4(hw, skb)) {
		FUNC3(hw, skb);
		FUNC1(skb);
		return;
	}

	/* enqueue */
	FUNC6(&rtlpriv->locks.c2hcmd_lock, flags);

	FUNC0(&rtlpriv->c2hcmd_queue, skb);

	FUNC7(&rtlpriv->locks.c2hcmd_lock, flags);

	/* wake up wq */
	FUNC2(rtlpriv->works.rtl_wq, &rtlpriv->works.c2hcmd_wq, 0);
}