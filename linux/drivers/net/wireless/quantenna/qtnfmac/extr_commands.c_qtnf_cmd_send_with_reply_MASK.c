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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct qtnf_bus {int fw_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct qlink_resp {int /*<<< orphan*/  result; TYPE_2__ mhdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct qlink_cmd {TYPE_1__ mhdr; int /*<<< orphan*/  vifid; int /*<<< orphan*/  macid; int /*<<< orphan*/  cmd_id; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 scalar_t__ QLINK_CMD_FW_INIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC7 (struct qlink_resp*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct qtnf_bus*) ; 
 int FUNC10 (struct qtnf_bus*,struct sk_buff*,struct sk_buff**) ; 

__attribute__((used)) static int FUNC11(struct qtnf_bus *bus,
				    struct sk_buff *cmd_skb,
				    struct sk_buff **response_skb,
				    size_t const_resp_size,
				    size_t *var_resp_size)
{
	struct qlink_cmd *cmd;
	struct qlink_resp *resp = NULL;
	struct sk_buff *resp_skb = NULL;
	u16 cmd_id;
	u8 mac_id;
	u8 vif_id;
	int ret;

	cmd = (struct qlink_cmd *)cmd_skb->data;
	cmd_id = FUNC4(cmd->cmd_id);
	mac_id = cmd->macid;
	vif_id = cmd->vifid;
	cmd->mhdr.len = FUNC2(cmd_skb->len);

	FUNC5("VIF%u.%u cmd=0x%.4X\n", mac_id, vif_id, cmd_id);

	if (!FUNC9(bus) && cmd_id != QLINK_CMD_FW_INIT) {
		FUNC6("VIF%u.%u: drop cmd 0x%.4X in fw state %d\n",
			mac_id, vif_id, cmd_id, bus->fw_state);
		FUNC3(cmd_skb);
		return -ENODEV;
	}

	ret = FUNC10(bus, cmd_skb, &resp_skb);
	if (ret)
		goto out;

	if (FUNC0(!resp_skb || !resp_skb->data)) {
		ret = -EFAULT;
		goto out;
	}

	resp = (struct qlink_resp *)resp_skb->data;
	ret = FUNC7(resp, cmd_id, mac_id, vif_id,
					  const_resp_size);
	if (ret)
		goto out;

	/* Return length of variable part of response */
	if (response_skb && var_resp_size)
		*var_resp_size = FUNC4(resp->mhdr.len) - const_resp_size;

out:
	if (response_skb)
		*response_skb = resp_skb;
	else
		FUNC1(resp_skb);

	if (!ret && resp)
		return FUNC8(FUNC4(resp->result));

	FUNC6("VIF%u.%u: cmd 0x%.4X failed: %d\n",
		mac_id, vif_id, cmd_id, ret);

	return ret;
}