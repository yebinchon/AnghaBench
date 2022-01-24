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
struct nvmet_sq {TYPE_1__* ctrl; int /*<<< orphan*/  ref; int /*<<< orphan*/  free_done; int /*<<< orphan*/  confirm_done; } ;
struct TYPE_3__ {struct nvmet_sq** sqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  nvmet_confirm_sq ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nvmet_sq *sq)
{
	/*
	 * If this is the admin queue, complete all AERs so that our
	 * queue doesn't have outstanding requests on it.
	 */
	if (sq->ctrl && sq->ctrl->sqs && sq->ctrl->sqs[0] == sq)
		FUNC0(sq->ctrl);
	FUNC3(&sq->ref, nvmet_confirm_sq);
	FUNC4(&sq->confirm_done);
	FUNC4(&sq->free_done);
	FUNC2(&sq->ref);

	if (sq->ctrl) {
		FUNC1(sq->ctrl);
		sq->ctrl = NULL; /* allows reusing the queue later */
	}
}