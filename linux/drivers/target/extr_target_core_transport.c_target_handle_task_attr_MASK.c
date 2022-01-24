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
struct se_device {int /*<<< orphan*/  delayed_cmd_lock; int /*<<< orphan*/  delayed_cmd_list; int /*<<< orphan*/  dev_ordered_sync; int /*<<< orphan*/  simple_cmds; TYPE_1__* transport; } ;
struct se_cmd {int sam_task_attr; int /*<<< orphan*/ * t_task_cdb; int /*<<< orphan*/  se_delayed_node; int /*<<< orphan*/  se_cmd_flags; struct se_device* se_dev; } ;
struct TYPE_2__ {int transport_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCF_TASK_ATTR_SET ; 
#define  TCM_HEAD_TAG 129 
#define  TCM_ORDERED_TAG 128 
 int TRANSPORT_FLAG_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct se_cmd *cmd)
{
	struct se_device *dev = cmd->se_dev;

	if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH)
		return false;

	cmd->se_cmd_flags |= SCF_TASK_ATTR_SET;

	/*
	 * Check for the existence of HEAD_OF_QUEUE, and if true return 1
	 * to allow the passed struct se_cmd list of tasks to the front of the list.
	 */
	switch (cmd->sam_task_attr) {
	case TCM_HEAD_TAG:
		FUNC3("Added HEAD_OF_QUEUE for CDB: 0x%02x\n",
			 cmd->t_task_cdb[0]);
		return false;
	case TCM_ORDERED_TAG:
		FUNC0(&dev->dev_ordered_sync);

		FUNC3("Added ORDERED for CDB: 0x%02x to ordered list\n",
			 cmd->t_task_cdb[0]);

		/*
		 * Execute an ORDERED command if no other older commands
		 * exist that need to be completed first.
		 */
		if (!FUNC1(&dev->simple_cmds))
			return false;
		break;
	default:
		/*
		 * For SIMPLE and UNTAGGED Task Attribute commands
		 */
		FUNC0(&dev->simple_cmds);
		break;
	}

	if (FUNC1(&dev->dev_ordered_sync) == 0)
		return false;

	FUNC4(&dev->delayed_cmd_lock);
	FUNC2(&cmd->se_delayed_node, &dev->delayed_cmd_list);
	FUNC5(&dev->delayed_cmd_lock);

	FUNC3("Added CDB: 0x%02x Task Attr: 0x%02x to delayed CMD listn",
		cmd->t_task_cdb[0], cmd->sam_task_attr);
	return true;
}