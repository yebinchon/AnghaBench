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
struct rpmsg_device {int /*<<< orphan*/  ept; } ;
struct qcom_smd_endpoint {struct qcom_smd_channel* qsch; } ;
struct qcom_smd_channel {TYPE_1__* edge; int /*<<< orphan*/  recv_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  state_work; } ;

/* Variables and functions */
 int FUNC0 (struct qcom_smd_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qcom_smd_endpoint* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rpmsg_device *rpdev)
{
	struct qcom_smd_endpoint *qept = FUNC4(rpdev->ept);
	struct qcom_smd_channel *channel = qept->qsch;
	unsigned long flags;
	bool kick_state;

	FUNC2(&channel->recv_lock, flags);
	kick_state = FUNC0(channel);
	FUNC3(&channel->recv_lock, flags);

	if (kick_state)
		FUNC1(&channel->edge->state_work);

	return 0;
}