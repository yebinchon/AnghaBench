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
struct se_device {int /*<<< orphan*/  dev_qf_count; int /*<<< orphan*/  qf_cmd_lock; } ;
struct se_cmd {TYPE_1__* se_dev; int /*<<< orphan*/  se_qf_node; int /*<<< orphan*/  t_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  qf_work_queue; int /*<<< orphan*/  qf_cmd_lock; int /*<<< orphan*/  qf_cmd_list; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TRANSPORT_COMPLETE_QF_ERR ; 
 int /*<<< orphan*/  TRANSPORT_COMPLETE_QF_OK ; 
 int /*<<< orphan*/  TRANSPORT_COMPLETE_QF_WP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct se_cmd *cmd, struct se_device *dev,
					int err, bool write_pending)
{
	/*
	 * -EAGAIN or -ENOMEM signals retry of ->write_pending() and/or
	 * ->queue_data_in() callbacks from new process context.
	 *
	 * Otherwise for other errors, transport_complete_qf() will send
	 * CHECK_CONDITION via ->queue_status() instead of attempting to
	 * retry associated fabric driver data-transfer callbacks.
	 */
	if (err == -EAGAIN || err == -ENOMEM) {
		cmd->t_state = (write_pending) ? TRANSPORT_COMPLETE_QF_WP :
						 TRANSPORT_COMPLETE_QF_OK;
	} else {
		FUNC2("Got unknown fabric queue status: %d\n", err);
		cmd->t_state = TRANSPORT_COMPLETE_QF_ERR;
	}

	FUNC4(&dev->qf_cmd_lock);
	FUNC1(&cmd->se_qf_node, &cmd->se_dev->qf_cmd_list);
	FUNC0(&dev->dev_qf_count);
	FUNC5(&cmd->se_dev->qf_cmd_lock);

	FUNC3(&cmd->se_dev->qf_work_queue);
}