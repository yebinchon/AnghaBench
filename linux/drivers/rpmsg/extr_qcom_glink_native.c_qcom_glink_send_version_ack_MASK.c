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
struct qcom_glink {int /*<<< orphan*/  features; } ;
struct glink_msg {int /*<<< orphan*/  param2; void* param1; void* cmd; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  GLINK_VERSION_1 ; 
 int /*<<< orphan*/  RPM_CMD_VERSION_ACK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_glink*,struct glink_msg*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct qcom_glink *glink)
{
	struct glink_msg msg;

	msg.cmd = FUNC0(RPM_CMD_VERSION_ACK);
	msg.param1 = FUNC0(GLINK_VERSION_1);
	msg.param2 = FUNC1(glink->features);

	FUNC2(glink, &msg, sizeof(msg), NULL, 0, true);
}