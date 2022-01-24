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
struct timer_list {int dummy; } ;
struct dasd_block {int /*<<< orphan*/  request_queue; TYPE_1__* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_block*) ; 
 struct dasd_block* FUNC3 (struct dasd_block*,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	unsigned long flags;
	struct dasd_block *block;

	block = FUNC3(block, t, timer);
	FUNC5(FUNC4(block->base->cdev), flags);
	/* re-activate request queue */
	FUNC1(block->base, DASD_STOPPED_PENDING);
	FUNC6(FUNC4(block->base->cdev), flags);
	FUNC2(block);
	FUNC0(block->request_queue, true);
}