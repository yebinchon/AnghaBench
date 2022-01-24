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
struct sk_buff {scalar_t__ data; } ;
struct qtnf_cmd_ctl_node {int waiting_for_resp; int /*<<< orphan*/  resp_lock; struct sk_buff* resp_skb; int /*<<< orphan*/  cmd_resp_completion; int /*<<< orphan*/  seq_num; } ;
struct TYPE_2__ {struct qtnf_cmd_ctl_node curr_cmd; } ;
struct qtnf_bus {TYPE_1__ trans; } ;
struct qlink_cmd {int /*<<< orphan*/  seq_num; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINTR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QTNF_DEF_SYNC_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct qtnf_bus*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct qtnf_bus *bus, struct sk_buff *cmd_skb,
				  struct sk_buff **response_skb)
{
	struct qtnf_cmd_ctl_node *ctl_node = &bus->trans.curr_cmd;
	struct qlink_cmd *cmd = (void *)cmd_skb->data;
	int ret = 0;
	long status;
	bool resp_not_handled = true;
	struct sk_buff *resp_skb = NULL;

	if (FUNC8(!response_skb)) {
		FUNC2(cmd_skb);
		return -EFAULT;
	}

	FUNC6(&ctl_node->resp_lock);
	ctl_node->seq_num++;
	cmd->seq_num = FUNC1(ctl_node->seq_num);
	FUNC0(ctl_node->resp_skb, "qtnfmac: response skb not empty\n");
	ctl_node->waiting_for_resp = true;
	FUNC7(&ctl_node->resp_lock);

	ret = FUNC5(bus, cmd_skb);
	FUNC2(cmd_skb);

	if (FUNC8(ret))
		goto out;

	status = FUNC9(
						&ctl_node->cmd_resp_completion,
						QTNF_DEF_SYNC_CMD_TIMEOUT);

	FUNC6(&ctl_node->resp_lock);
	resp_not_handled = ctl_node->waiting_for_resp;
	resp_skb = ctl_node->resp_skb;
	ctl_node->resp_skb = NULL;
	ctl_node->waiting_for_resp = false;
	FUNC7(&ctl_node->resp_lock);

	if (FUNC8(status <= 0)) {
		if (status == 0) {
			ret = -ETIMEDOUT;
			FUNC4("response timeout\n");
		} else {
			ret = -EINTR;
			FUNC3("interrupted\n");
		}
	}

	if (FUNC8(!resp_skb || resp_not_handled)) {
		if (!ret)
			ret = -EFAULT;

		goto out;
	}

	ret = 0;
	*response_skb = resp_skb;

out:
	if (FUNC8(resp_skb && resp_not_handled))
		FUNC2(resp_skb);

	return ret;
}