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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qlink_cmd_disconnect {int /*<<< orphan*/  reason; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC5(struct qtnf_vif *vif, u16 reason_code)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_disconnect *cmd;
	int ret;

	cmd_skb = FUNC3(vif->mac->macid, vif->vifid,
					    QLINK_CMD_DISCONNECT,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC1(vif->mac->bus);

	cmd = (struct qlink_cmd_disconnect *)cmd_skb->data;
	cmd->reason = FUNC0(reason_code);

	ret = FUNC4(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC2(vif->mac->bus);

	return ret;
}