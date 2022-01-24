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
struct dasd_block {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  base; int /*<<< orphan*/  tasklet_scheduled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dasd_block *block)
{
	/* Protect against rescheduling. */
	if (FUNC0(&block->tasklet_scheduled, 0, 1) != 0)
		return;
	/* life cycle of block is bound to it's base device */
	FUNC1(block->base);
	FUNC2(&block->tasklet);
}