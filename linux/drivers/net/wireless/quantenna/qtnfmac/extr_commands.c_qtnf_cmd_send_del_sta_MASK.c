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
struct station_del_parameters {int /*<<< orphan*/  reason_code; int /*<<< orphan*/  subtype; int /*<<< orphan*/  mac; } ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qlink_cmd_del_sta {int /*<<< orphan*/  reason_code; int /*<<< orphan*/  subtype; int /*<<< orphan*/  sta_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_DEL_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC7(struct qtnf_vif *vif,
			  struct station_del_parameters *params)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_del_sta *cmd;
	int ret = 0;

	cmd_skb = FUNC5(vif->mac->macid, vif->vifid,
					    QLINK_CMD_DEL_STA,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC3(vif->mac->bus);

	cmd = (struct qlink_cmd_del_sta *)cmd_skb->data;

	if (params->mac)
		FUNC2(cmd->sta_addr, params->mac);
	else
		FUNC1(cmd->sta_addr);	/* flush all stations */

	cmd->subtype = params->subtype;
	cmd->reason_code = FUNC0(params->reason_code);

	ret = FUNC6(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC4(vif->mac->bus);

	return ret;
}