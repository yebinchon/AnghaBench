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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_cmd_ctl_node {int waiting_for_resp; scalar_t__ const seq_num; int /*<<< orphan*/  resp_lock; int /*<<< orphan*/  cmd_resp_completion; struct sk_buff* resp_skb; } ;
struct TYPE_2__ {struct qtnf_cmd_ctl_node curr_cmd; } ;
struct qtnf_bus {TYPE_1__ trans; } ;
struct qlink_resp {int /*<<< orphan*/  seq_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct qtnf_bus *bus, struct sk_buff *skb)
{
	struct qtnf_cmd_ctl_node *ctl_node = &bus->trans.curr_cmd;
	const struct qlink_resp *resp = (const struct qlink_resp *)skb->data;
	const u16 recvd_seq_num = FUNC2(resp->seq_num);

	FUNC4(&ctl_node->resp_lock);

	if (FUNC6(!ctl_node->waiting_for_resp)) {
		FUNC3("unexpected response\n");
		goto out_err;
	}

	if (FUNC6(recvd_seq_num != ctl_node->seq_num)) {
		FUNC3("seq num mismatch\n");
		goto out_err;
	}

	ctl_node->resp_skb = skb;
	ctl_node->waiting_for_resp = false;

	FUNC5(&ctl_node->resp_lock);

	FUNC0(&ctl_node->cmd_resp_completion);
	return;

out_err:
	FUNC5(&ctl_node->resp_lock);
	FUNC1(skb);
}