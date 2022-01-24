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
struct qlink_cmd_add_key {int pairwise; int /*<<< orphan*/  key_index; int /*<<< orphan*/  cipher; int /*<<< orphan*/  addr; } ;
struct key_params {scalar_t__ key_len; scalar_t__ seq_len; scalar_t__ seq; scalar_t__ key; int /*<<< orphan*/  cipher; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_ADD_KEY ; 
 int /*<<< orphan*/  QTN_TLV_ID_KEY ; 
 int /*<<< orphan*/  QTN_TLV_ID_SEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

int FUNC8(struct qtnf_vif *vif, u8 key_index, bool pairwise,
			  const u8 *mac_addr, struct key_params *params)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_add_key *cmd;
	int ret = 0;

	cmd_skb = FUNC5(vif->mac->macid, vif->vifid,
					    QLINK_CMD_ADD_KEY,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC3(vif->mac->bus);

	cmd = (struct qlink_cmd_add_key *)cmd_skb->data;

	if (mac_addr)
		FUNC2(cmd->addr, mac_addr);
	else
		FUNC1(cmd->addr);

	cmd->cipher = FUNC0(params->cipher);
	cmd->key_index = key_index;
	cmd->pairwise = pairwise;

	if (params->key && params->key_len > 0)
		FUNC7(cmd_skb, QTN_TLV_ID_KEY,
					 params->key,
					 params->key_len);

	if (params->seq && params->seq_len > 0)
		FUNC7(cmd_skb, QTN_TLV_ID_SEQ,
					 params->seq,
					 params->seq_len);

	ret = FUNC6(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC4(vif->mac->bus);

	return ret;
}