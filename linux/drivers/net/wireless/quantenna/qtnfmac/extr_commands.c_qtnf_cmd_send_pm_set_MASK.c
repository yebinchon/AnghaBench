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
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {int /*<<< orphan*/  vifid; TYPE_1__* mac; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd_pm_set {int /*<<< orphan*/  pm_standby_timer; int /*<<< orphan*/  pm_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  macid; struct qtnf_bus* bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_PM_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_bus*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qtnf_bus*,struct sk_buff*) ; 

int FUNC5(const struct qtnf_vif *vif, u8 pm_mode, int timeout)
{
	struct qtnf_bus *bus = vif->mac->bus;
	struct sk_buff *cmd_skb;
	struct qlink_cmd_pm_set *cmd;
	int ret = 0;

	cmd_skb = FUNC3(vif->mac->macid, vif->vifid,
					    QLINK_CMD_PM_SET, sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	cmd = (struct qlink_cmd_pm_set *)cmd_skb->data;
	cmd->pm_mode = pm_mode;
	cmd->pm_standby_timer = FUNC0(timeout);

	FUNC1(bus);

	ret = FUNC4(bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC2(bus);

	return ret;
}