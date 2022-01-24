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
struct sk_buff {int dummy; } ;
struct port100_cmd {int resp_len; void* complete_cb_context; int /*<<< orphan*/  complete_cb; struct sk_buff* resp; struct sk_buff* req; int /*<<< orphan*/  code; } ;
struct port100 {struct port100_cmd* cmd; TYPE_1__* interface; } ;
typedef  int /*<<< orphan*/  port100_send_async_complete_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PORT100_FRAME_HEADER_LEN ; 
 int PORT100_FRAME_MAX_PAYLOAD_LEN ; 
 int PORT100_FRAME_TAIL_LEN ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct port100_cmd*) ; 
 struct port100_cmd* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC6 (struct port100*,struct sk_buff*,struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct port100 *dev, u8 cmd_code,
				struct sk_buff *req,
				port100_send_async_complete_t complete_cb,
				void *complete_cb_context)
{
	struct port100_cmd *cmd;
	struct sk_buff *resp;
	int rc;
	int  resp_len = PORT100_FRAME_HEADER_LEN +
			PORT100_FRAME_MAX_PAYLOAD_LEN +
			PORT100_FRAME_TAIL_LEN;

	if (dev->cmd) {
		FUNC4(&dev->interface->dev,
			"A command is still in process\n");
		return -EBUSY;
	}

	resp = FUNC0(resp_len, GFP_KERNEL);
	if (!resp)
		return -ENOMEM;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		FUNC1(resp);
		return -ENOMEM;
	}

	cmd->code = cmd_code;
	cmd->req = req;
	cmd->resp = resp;
	cmd->resp_len = resp_len;
	cmd->complete_cb = complete_cb;
	cmd->complete_cb_context = complete_cb_context;

	FUNC5(dev, cmd_code, req);

	dev->cmd = cmd;

	rc = FUNC6(dev, req, resp, resp_len);
	if (rc) {
		FUNC2(cmd);
		FUNC1(resp);
		dev->cmd = NULL;
	}

	return rc;
}