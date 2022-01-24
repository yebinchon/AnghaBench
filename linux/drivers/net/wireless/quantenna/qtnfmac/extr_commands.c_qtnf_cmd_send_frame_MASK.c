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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qlink_cmd_frame_tx {void* flags; void* freq; int /*<<< orphan*/  cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_SEND_FRAME ; 
 int QTNF_MAX_CMD_BUF_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC8(struct qtnf_vif *vif, u32 cookie, u16 flags,
			u16 freq, const u8 *buf, size_t len)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_frame_tx *cmd;
	int ret;

	if (sizeof(*cmd) + len > QTNF_MAX_CMD_BUF_SIZE) {
		FUNC2("VIF%u.%u: frame is too big: %zu\n", vif->mac->macid,
			vif->vifid, len);
		return -E2BIG;
	}

	cmd_skb = FUNC5(vif->mac->macid, vif->vifid,
					    QLINK_CMD_SEND_FRAME,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC3(vif->mac->bus);

	cmd = (struct qlink_cmd_frame_tx *)cmd_skb->data;
	cmd->cookie = FUNC1(cookie);
	cmd->freq = FUNC0(freq);
	cmd->flags = FUNC0(flags);

	if (len && buf)
		FUNC7(cmd_skb, buf, len);

	ret = FUNC6(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC4(vif->mac->bus);

	return ret;
}