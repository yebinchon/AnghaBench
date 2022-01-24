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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dasd_block {TYPE_1__ profile; int /*<<< orphan*/  timer; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  ccw_queue; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  tasklet_scheduled; int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dasd_block* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dasd_block_tasklet ; 
 int /*<<< orphan*/  dasd_block_timeout ; 
 struct dasd_block* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct dasd_block *FUNC7(void)
{
	struct dasd_block *block;

	block = FUNC3(sizeof(*block), GFP_ATOMIC);
	if (!block)
		return FUNC0(-ENOMEM);
	/* open_count = 0 means device online but not in use */
	FUNC2(&block->open_count, -1);

	FUNC2(&block->tasklet_scheduled, 0);
	FUNC5(&block->tasklet, dasd_block_tasklet,
		     (unsigned long) block);
	FUNC1(&block->ccw_queue);
	FUNC4(&block->queue_lock);
	FUNC6(&block->timer, dasd_block_timeout, 0);
	FUNC4(&block->profile.lock);

	return block;
}