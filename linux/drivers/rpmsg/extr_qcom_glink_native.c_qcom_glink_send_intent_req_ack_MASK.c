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
struct qcom_glink {int dummy; } ;
struct glink_msg {int /*<<< orphan*/  param2; void* param1; void* cmd; } ;
struct glink_channel {int /*<<< orphan*/  lcid; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  RPM_CMD_RX_INTENT_REQ_ACK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_glink*,struct glink_msg*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct qcom_glink *glink,
					  struct glink_channel *channel,
					  bool granted)
{
	struct glink_msg msg;

	msg.cmd = FUNC0(RPM_CMD_RX_INTENT_REQ_ACK);
	msg.param1 = FUNC0(channel->lcid);
	msg.param2 = FUNC1(granted);

	FUNC2(glink, &msg, sizeof(msg), NULL, 0, true);

	return 0;
}