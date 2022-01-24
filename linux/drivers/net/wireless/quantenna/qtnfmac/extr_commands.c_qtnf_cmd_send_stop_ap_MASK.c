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
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qlink_cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_STOP_AP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC4(struct qtnf_vif *vif)
{
	struct sk_buff *cmd_skb;
	int ret;

	cmd_skb = FUNC2(vif->mac->macid, vif->vifid,
					    QLINK_CMD_STOP_AP,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC0(vif->mac->bus);
	ret = FUNC3(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC1(vif->mac->bus);

	return ret;
}