#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct port100_cmd {int status; int /*<<< orphan*/  complete_cb_context; int /*<<< orphan*/  (* complete_cb ) (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ;struct sk_buff* resp; struct sk_buff* req; } ;
struct port100 {struct port100_cmd* cmd; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  PORT100_FRAME_HEADER_LEN ; 
 scalar_t__ PORT100_FRAME_TAIL_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct port100_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct port100 *dev)
{
	struct port100_cmd *cmd = dev->cmd;
	int status = cmd->status;

	struct sk_buff *req = cmd->req;
	struct sk_buff *resp = cmd->resp;

	FUNC1(req);

	dev->cmd = NULL;

	if (status < 0) {
		cmd->complete_cb(dev, cmd->complete_cb_context,
				 FUNC0(status));
		FUNC1(resp);
		goto done;
	}

	FUNC5(resp, FUNC3(resp->data));
	FUNC4(resp, PORT100_FRAME_HEADER_LEN);
	FUNC6(resp, resp->len - PORT100_FRAME_TAIL_LEN);

	cmd->complete_cb(dev, cmd->complete_cb_context, resp);

done:
	FUNC2(cmd);
}