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
struct vfio_ccw_private {scalar_t__ state; int /*<<< orphan*/  avail; int /*<<< orphan*/ * mdev; int /*<<< orphan*/  cp; TYPE_2__* sch; } ;
struct mdev_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; int /*<<< orphan*/  cssid; } ;
struct TYPE_4__ {TYPE_1__ schid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VFIO_CCW_STATE_NOT_OPER ; 
 scalar_t__ VFIO_CCW_STATE_STANDBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vfio_ccw_private* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct mdev_device *mdev)
{
	struct vfio_ccw_private *private =
		FUNC3(FUNC4(mdev));

	FUNC0(2, "mdev %pUl, sch %x.%x.%04x: remove\n",
			   FUNC5(mdev), private->sch->schid.cssid,
			   private->sch->schid.ssid,
			   private->sch->schid.sch_no);

	if ((private->state != VFIO_CCW_STATE_NOT_OPER) &&
	    (private->state != VFIO_CCW_STATE_STANDBY)) {
		if (!FUNC6(private->sch))
			private->state = VFIO_CCW_STATE_STANDBY;
		/* The state will be NOT_OPER on error. */
	}

	FUNC2(&private->cp);
	private->mdev = NULL;
	FUNC1(&private->avail);

	return 0;
}