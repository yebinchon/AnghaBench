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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int /*<<< orphan*/  lock; int /*<<< orphan*/  backlogq; scalar_t__ lock_owner; scalar_t__ rx_credits; int /*<<< orphan*/  ctrlq_idx; int /*<<< orphan*/  tid; } ;
struct cpl_rx_data_ack {int dummy; } ;
typedef  int /*<<< orphan*/  (* cxgbit_skcb_rx_backlog_fn ) (struct cxgbit_sock*,struct sk_buff*) ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (scalar_t__) ; 
 int RX_DACK_CHANGE_F ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct cxgbit_sock*,struct sk_buff*)) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbit_sock*,struct sk_buff*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct cxgbit_sock *csk)
{
	struct sk_buff *skb;
	u32 len = FUNC6(sizeof(struct cpl_rx_data_ack), 16);
	u32 credit_dack;

	skb = FUNC3(len, GFP_KERNEL);
	if (!skb)
		return -1;

	credit_dack = RX_DACK_CHANGE_F | FUNC1(1) |
		      FUNC0(csk->rx_credits);

	FUNC4(skb, len, csk->tid, csk->ctrlq_idx,
			    credit_dack);

	csk->rx_credits = 0;

	FUNC7(&csk->lock);
	if (csk->lock_owner) {
		cxgbit_skcb_rx_backlog_fn(skb) = cxgbit_send_rx_credits;
		FUNC2(&csk->backlogq, skb);
		FUNC8(&csk->lock);
		return 0;
	}

	FUNC5(csk, skb);
	FUNC8(&csk->lock);

	return 0;
}