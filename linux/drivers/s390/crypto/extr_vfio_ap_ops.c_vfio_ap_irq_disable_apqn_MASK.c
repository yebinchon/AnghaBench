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
struct vfio_ap_queue {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vfio_ap_drv; } ;
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct vfio_ap_queue* FUNC0 (struct device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  match_apqn ; 
 TYPE_2__* matrix_dev ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_ap_queue*) ; 

__attribute__((used)) static void FUNC4(int apqn)
{
	struct device *dev;
	struct vfio_ap_queue *q;

	dev = FUNC1(&matrix_dev->vfio_ap_drv->driver, NULL,
				 &apqn, match_apqn);
	if (dev) {
		q = FUNC0(dev);
		FUNC3(q);
		FUNC2(dev);
	}
}