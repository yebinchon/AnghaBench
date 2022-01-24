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
struct vnic_wq {int /*<<< orphan*/  index; TYPE_1__* ctrl; } ;
struct TYPE_2__ {int /*<<< orphan*/  running; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct vnic_wq *wq)
{
	unsigned int wait;

	FUNC1(0, &wq->ctrl->enable);

	/* Wait for HW to ACK disable request */
	for (wait = 0; wait < 100; wait++) {
		if (!(FUNC0(&wq->ctrl->running)))
			return 0;
		FUNC3(1);
	}

	FUNC2("Failed to disable WQ[%d]\n", wq->index);

	return -ETIMEDOUT;
}