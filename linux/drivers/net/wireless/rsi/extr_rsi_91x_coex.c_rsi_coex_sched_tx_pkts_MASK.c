#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct rsi_coex_ctrl_block {int /*<<< orphan*/  priv; int /*<<< orphan*/ * coex_tx_qs; } ;
typedef  enum rsi_coex_queues { ____Placeholder_rsi_coex_queues } rsi_coex_queues ;

/* Variables and functions */
 int /*<<< orphan*/  INFO_ZONE ; 
 int RSI_COEX_Q_BT ; 
 int RSI_COEX_Q_INVALID ; 
 int FUNC0 (struct rsi_coex_ctrl_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rsi_coex_ctrl_block *coex_cb)
{
	enum rsi_coex_queues coex_q = RSI_COEX_Q_INVALID;
	struct sk_buff *skb;

	do {
		coex_q = FUNC0(coex_cb);
		FUNC1(INFO_ZONE, "queue = %d\n", coex_q);

		if (coex_q == RSI_COEX_Q_BT) {
			skb = FUNC3(&coex_cb->coex_tx_qs[RSI_COEX_Q_BT]);
			FUNC2(coex_cb->priv, skb);
		}
	} while (coex_q != RSI_COEX_Q_INVALID);
}