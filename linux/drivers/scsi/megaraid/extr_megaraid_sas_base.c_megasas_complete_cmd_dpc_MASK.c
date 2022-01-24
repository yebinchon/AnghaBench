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
typedef  size_t u32 ;
struct megasas_instance {size_t max_fw_cmds; int /*<<< orphan*/  completion_lock; int /*<<< orphan*/ * consumer; struct megasas_cmd** cmd_list; TYPE_1__* pdev; int /*<<< orphan*/ * reply_queue; int /*<<< orphan*/ * producer; int /*<<< orphan*/  adprecovery; } ;
struct megasas_cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DID_OK ; 
 scalar_t__ MEGASAS_HW_CRITICAL_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC6 (struct megasas_instance*,struct megasas_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(unsigned long instance_addr)
{
	u32 producer;
	u32 consumer;
	u32 context;
	struct megasas_cmd *cmd;
	struct megasas_instance *instance =
				(struct megasas_instance *)instance_addr;
	unsigned long flags;

	/* If we have already declared adapter dead, donot complete cmds */
	if (FUNC1(&instance->adprecovery) == MEGASAS_HW_CRITICAL_ERROR)
		return;

	FUNC7(&instance->completion_lock, flags);

	producer = FUNC4(*instance->producer);
	consumer = FUNC4(*instance->consumer);

	while (consumer != producer) {
		context = FUNC4(instance->reply_queue[consumer]);
		if (context >= instance->max_fw_cmds) {
			FUNC3(&instance->pdev->dev, "Unexpected context value %x\n",
				context);
			FUNC0();
		}

		cmd = instance->cmd_list[context];

		FUNC6(instance, cmd, DID_OK);

		consumer++;
		if (consumer == (instance->max_fw_cmds + 1)) {
			consumer = 0;
		}
	}

	*instance->consumer = FUNC2(producer);

	FUNC8(&instance->completion_lock, flags);

	/*
	 * Check if we can restore can_queue
	 */
	FUNC5(instance);
}