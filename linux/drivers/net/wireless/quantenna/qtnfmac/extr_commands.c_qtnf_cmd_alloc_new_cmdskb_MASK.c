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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_2__ {void* type; void* len; } ;
struct qlink_cmd {void* vifid; void* macid; void* cmd_id; TYPE_1__ mhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QLINK_MSG_TYPE_CMD ; 
 scalar_t__ QTNF_MAX_CMD_BUF_SIZE ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,size_t) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(u8 macid, u8 vifid, u16 cmd_no,
						 size_t cmd_size)
{
	struct qlink_cmd *cmd;
	struct sk_buff *cmd_skb;

	cmd_skb = FUNC0(sizeof(*cmd) +
				  QTNF_MAX_CMD_BUF_SIZE, GFP_KERNEL);
	if (FUNC4(!cmd_skb)) {
		FUNC2("VIF%u.%u CMD %u: alloc failed\n", macid, vifid, cmd_no);
		return NULL;
	}

	FUNC3(cmd_skb, cmd_size);

	cmd = (struct qlink_cmd *)cmd_skb->data;
	cmd->mhdr.len = FUNC1(cmd_skb->len);
	cmd->mhdr.type = FUNC1(QLINK_MSG_TYPE_CMD);
	cmd->cmd_id = FUNC1(cmd_no);
	cmd->macid = macid;
	cmd->vifid = vifid;

	return cmd_skb;
}