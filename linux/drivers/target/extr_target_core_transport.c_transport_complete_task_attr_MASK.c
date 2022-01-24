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
struct se_device {int /*<<< orphan*/  dev_cur_ordered_id; int /*<<< orphan*/  dev_ordered_sync; int /*<<< orphan*/  simple_cmds; TYPE_1__* transport; } ;
struct se_cmd {int se_cmd_flags; scalar_t__ sam_task_attr; struct se_device* se_dev; } ;
struct TYPE_2__ {int transport_flags; } ;

/* Variables and functions */
 int SCF_TASK_ATTR_SET ; 
 scalar_t__ TCM_HEAD_TAG ; 
 scalar_t__ TCM_ORDERED_TAG ; 
 scalar_t__ TCM_SIMPLE_TAG ; 
 int TRANSPORT_FLAG_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct se_device*) ; 

__attribute__((used)) static void FUNC3(struct se_cmd *cmd)
{
	struct se_device *dev = cmd->se_dev;

	if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH)
		return;

	if (!(cmd->se_cmd_flags & SCF_TASK_ATTR_SET))
		goto restart;

	if (cmd->sam_task_attr == TCM_SIMPLE_TAG) {
		FUNC0(&dev->simple_cmds);
		dev->dev_cur_ordered_id++;
	} else if (cmd->sam_task_attr == TCM_HEAD_TAG) {
		dev->dev_cur_ordered_id++;
		FUNC1("Incremented dev_cur_ordered_id: %u for HEAD_OF_QUEUE\n",
			 dev->dev_cur_ordered_id);
	} else if (cmd->sam_task_attr == TCM_ORDERED_TAG) {
		FUNC0(&dev->dev_ordered_sync);

		dev->dev_cur_ordered_id++;
		FUNC1("Incremented dev_cur_ordered_id: %u for ORDERED\n",
			 dev->dev_cur_ordered_id);
	}
	cmd->se_cmd_flags &= ~SCF_TASK_ATTR_SET;

restart:
	FUNC2(dev);
}