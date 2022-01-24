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
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qlink_cmd_del_key {int pairwise; int /*<<< orphan*/  key_index; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_DEL_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC6(struct qtnf_vif *vif, u8 key_index, bool pairwise,
			  const u8 *mac_addr)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_del_key *cmd;
	int ret = 0;

	cmd_skb = FUNC4(vif->mac->macid, vif->vifid,
					    QLINK_CMD_DEL_KEY,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC2(vif->mac->bus);

	cmd = (struct qlink_cmd_del_key *)cmd_skb->data;

	if (mac_addr)
		FUNC1(cmd->addr, mac_addr);
	else
		FUNC0(cmd->addr);

	cmd->key_index = key_index;
	cmd->pairwise = pairwise;

	ret = FUNC5(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC3(vif->mac->bus);

	return ret;
}