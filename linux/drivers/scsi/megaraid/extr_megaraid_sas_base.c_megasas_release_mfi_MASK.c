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
typedef  int u32 ;
struct megasas_instance {int max_mfi_cmds; int bar; TYPE_1__* pdev; int /*<<< orphan*/  reg_set; int /*<<< orphan*/  reply_queue_h; scalar_t__ reply_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(struct megasas_instance *instance)
{
	u32 reply_q_sz = sizeof(u32) *(instance->max_mfi_cmds + 1);

	if (instance->reply_queue)
		FUNC0(&instance->pdev->dev, reply_q_sz,
			    instance->reply_queue, instance->reply_queue_h);

	FUNC2(instance);

	FUNC1(instance->reg_set);

	FUNC3(instance->pdev, 1<<instance->bar);
}