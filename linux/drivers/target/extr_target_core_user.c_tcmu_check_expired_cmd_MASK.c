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
typedef  int /*<<< orphan*/  u8 ;
struct tcmu_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  commands; int /*<<< orphan*/  cmd_time_out; } ;
struct tcmu_cmd {int /*<<< orphan*/  queue_entry; struct se_cmd* se_cmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  deadline; struct tcmu_dev* tcmu_dev; } ;
struct se_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SAM_STAT_TASK_SET_FULL ; 
 int /*<<< orphan*/  TCMU_CMD_BIT_EXPIRED ; 
 int /*<<< orphan*/  TCMU_CMD_BIT_INFLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcmu_cmd*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int id, void *p, void *data)
{
	struct tcmu_cmd *cmd = p;
	struct tcmu_dev *udev = cmd->tcmu_dev;
	u8 scsi_status;
	struct se_cmd *se_cmd;
	bool is_running;

	if (FUNC6(TCMU_CMD_BIT_EXPIRED, &cmd->flags))
		return 0;

	if (!FUNC7(jiffies, cmd->deadline))
		return 0;

	is_running = FUNC6(TCMU_CMD_BIT_INFLIGHT, &cmd->flags);
	se_cmd = cmd->se_cmd;

	if (is_running) {
		/*
		 * If cmd_time_out is disabled but qfull is set deadline
		 * will only reflect the qfull timeout. Ignore it.
		 */
		if (!udev->cmd_time_out)
			return 0;

		FUNC3(TCMU_CMD_BIT_EXPIRED, &cmd->flags);
		/*
		 * target_complete_cmd will translate this to LUN COMM FAILURE
		 */
		scsi_status = SAM_STAT_CHECK_CONDITION;
		FUNC1(&cmd->queue_entry);
		cmd->se_cmd = NULL;
	} else {
		FUNC1(&cmd->queue_entry);
		FUNC0(&udev->commands, id);
		FUNC5(cmd);
		scsi_status = SAM_STAT_TASK_SET_FULL;
	}

	FUNC2("Timing out cmd %u on dev %s that is %s.\n",
		 id, udev->name, is_running ? "inflight" : "queued");

	FUNC4(se_cmd, scsi_status);
	return 0;
}