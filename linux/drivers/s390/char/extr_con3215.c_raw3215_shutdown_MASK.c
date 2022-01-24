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
struct raw3215_info {int flags; int /*<<< orphan*/  cdev; int /*<<< orphan*/  port; int /*<<< orphan*/  empty_wait; int /*<<< orphan*/ * queued_read; int /*<<< orphan*/ * queued_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RAW3215_FIXED ; 
 int RAW3215_WORKING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC10(struct raw3215_info *raw)
{
	FUNC0(wait, current);
	unsigned long flags;

	if (!FUNC8(&raw->port) || (raw->flags & RAW3215_FIXED))
		return;
	/* Wait for outstanding requests, then free irq */
	FUNC6(FUNC2(raw->cdev), flags);
	if ((raw->flags & RAW3215_WORKING) ||
	    raw->queued_write != NULL ||
	    raw->queued_read != NULL) {
		FUNC1(&raw->empty_wait, &wait);
		FUNC5(TASK_INTERRUPTIBLE);
		FUNC7(FUNC2(raw->cdev), flags);
		FUNC4();
		FUNC6(FUNC2(raw->cdev), flags);
		FUNC3(&raw->empty_wait, &wait);
		FUNC5(TASK_RUNNING);
		FUNC9(&raw->port, 1);
	}
	FUNC7(FUNC2(raw->cdev), flags);
}