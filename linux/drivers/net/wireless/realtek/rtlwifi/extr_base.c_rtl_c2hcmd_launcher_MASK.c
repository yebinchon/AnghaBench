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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; scalar_t__ cb; } ;
struct TYPE_2__ {int /*<<< orphan*/  c2hcmd_lock; } ;
struct rtl_priv {TYPE_1__ locks; int /*<<< orphan*/  c2hcmd_queue; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct ieee80211_hw *hw, int exec)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct sk_buff *skb;
	unsigned long flags;
	int i;

	for (i = 0; i < 200; i++) {
		/* dequeue a task */
		FUNC6(&rtlpriv->locks.c2hcmd_lock, flags);

		skb = FUNC2(&rtlpriv->c2hcmd_queue);

		FUNC7(&rtlpriv->locks.c2hcmd_lock, flags);

		/* do it */
		if (!skb)
			break;

		FUNC1(rtlpriv, COMP_FW, DBG_DMESG, "C2H rx_desc_shift=%d\n",
			 *((u8 *)skb->cb));
		FUNC0(rtlpriv, COMP_FW, DBG_DMESG,
			      "C2H data: ", skb->data, skb->len);

		if (exec)
			FUNC4(hw, skb);

		/* free */
		FUNC3(skb);
	}
}