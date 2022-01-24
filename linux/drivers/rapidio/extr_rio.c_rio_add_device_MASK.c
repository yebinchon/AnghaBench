#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rio_dev {int pef; TYPE_2__* net; TYPE_1__* rswitch; int /*<<< orphan*/  net_list; int /*<<< orphan*/  global_list; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  switches; int /*<<< orphan*/  devices; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  RIO_DEVICE_RUNNING ; 
 int RIO_PEF_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rio_devices ; 
 int /*<<< orphan*/  rio_global_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct rio_dev *rdev)
{
	int err;

	FUNC0(&rdev->state, RIO_DEVICE_RUNNING);
	err = FUNC1(&rdev->dev);
	if (err)
		return err;

	FUNC3(&rio_global_list_lock);
	FUNC2(&rdev->global_list, &rio_devices);
	if (rdev->net) {
		FUNC2(&rdev->net_list, &rdev->net->devices);
		if (rdev->pef & RIO_PEF_SWITCH)
			FUNC2(&rdev->rswitch->node,
				      &rdev->net->switches);
	}
	FUNC4(&rio_global_list_lock);

	return 0;
}