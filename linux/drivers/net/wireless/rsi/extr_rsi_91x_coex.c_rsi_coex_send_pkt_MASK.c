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
typedef  int /*<<< orphan*/  u8 ;
struct skb_info {int flags; } ;
struct sk_buff {scalar_t__ priority; } ;
struct rsi_common {int /*<<< orphan*/  priv; scalar_t__ iface_down; scalar_t__ coex_cb; } ;
struct TYPE_3__ {int /*<<< orphan*/  event; } ;
struct rsi_coex_ctrl_block {TYPE_1__ coex_tx_thread; int /*<<< orphan*/ * coex_tx_qs; } ;
typedef  enum rsi_coex_queues { ____Placeholder_rsi_coex_queues } rsi_coex_queues ;
struct TYPE_4__ {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ERR_ZONE ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int INTERNAL_MGMT_PKT ; 
 scalar_t__ MGMT_SOFT_Q ; 
 int RSI_COEX_Q_COMMON ; 
 int RSI_COEX_Q_INVALID ; 
 int RSI_COEX_Q_WLAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rsi_common*,struct sk_buff*) ; 
 int FUNC5 (struct rsi_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC8(void *priv, struct sk_buff *skb, u8 hal_queue)
{
	struct rsi_common *common = (struct rsi_common *)priv;
	struct rsi_coex_ctrl_block *coex_cb =
		(struct rsi_coex_ctrl_block *)common->coex_cb;
	struct skb_info *tx_params = NULL;
	enum rsi_coex_queues coex_q;
	int status;

	coex_q = FUNC3(hal_queue);
	if (coex_q == RSI_COEX_Q_INVALID) {
		FUNC1(ERR_ZONE, "Invalid coex queue\n");
		return -EINVAL;
	}
	if (coex_q != RSI_COEX_Q_COMMON &&
	    coex_q != RSI_COEX_Q_WLAN) {
		FUNC7(&coex_cb->coex_tx_qs[coex_q], skb);
		FUNC6(&coex_cb->coex_tx_thread.event);
		return 0;
	}
	if (common->iface_down) {
		tx_params =
			(struct skb_info *)&FUNC0(skb)->driver_data;

		if (!(tx_params->flags & INTERNAL_MGMT_PKT)) {
			FUNC2(common->priv, skb, -EINVAL);
			return 0;
		}
	}

	/* Send packet to hal */
	if (skb->priority == MGMT_SOFT_Q)
		status = FUNC5(common, skb);
	else
		status = FUNC4(common, skb);

	return status;
}