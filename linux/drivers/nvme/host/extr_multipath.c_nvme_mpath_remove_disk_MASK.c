#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvme_ns_head {TYPE_1__* disk; int /*<<< orphan*/  requeue_work; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int GENHD_FL_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(struct nvme_ns_head *head)
{
	if (!head->disk)
		return;
	if (head->disk->flags & GENHD_FL_UP)
		FUNC2(head->disk);
	FUNC1(head->disk->queue);
	/* make sure all pending bios are cleaned up */
	FUNC4(&head->requeue_work);
	FUNC3(&head->requeue_work);
	FUNC0(head->disk->queue);
	FUNC5(head->disk);
}