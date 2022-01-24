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
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;
struct autofs_wait_queue {int /*<<< orphan*/  queue; int /*<<< orphan*/  wait_ctr; TYPE_1__ name; int /*<<< orphan*/  status; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {int flags; int pipefd; int /*<<< orphan*/  wq_mutex; int /*<<< orphan*/ * pipe; struct autofs_wait_queue* queues; } ;

/* Variables and functions */
 int AUTOFS_SBI_CATATONIC ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct autofs_sb_info *sbi)
{
	struct autofs_wait_queue *wq, *nwq;

	FUNC2(&sbi->wq_mutex);
	if (sbi->flags & AUTOFS_SBI_CATATONIC) {
		FUNC3(&sbi->wq_mutex);
		return;
	}

	FUNC4("entering catatonic mode\n");

	sbi->flags |= AUTOFS_SBI_CATATONIC;
	wq = sbi->queues;
	sbi->queues = NULL;	/* Erase all wait queues */
	while (wq) {
		nwq = wq->next;
		wq->status = -ENOENT; /* Magic is gone - report failure */
		FUNC1(wq->name.name);
		wq->name.name = NULL;
		wq->wait_ctr--;
		FUNC5(&wq->queue);
		wq = nwq;
	}
	FUNC0(sbi->pipe);	/* Close the pipe */
	sbi->pipe = NULL;
	sbi->pipefd = -1;
	FUNC3(&sbi->wq_mutex);
}