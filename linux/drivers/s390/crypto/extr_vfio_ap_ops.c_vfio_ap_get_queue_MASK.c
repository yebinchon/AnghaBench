#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfio_ap_queue {struct ap_matrix_mdev* matrix_mdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  aqm; int /*<<< orphan*/  apm; } ;
struct ap_matrix_mdev {TYPE_1__ matrix; } ;
struct TYPE_6__ {TYPE_2__* vfio_ap_drv; } ;
struct TYPE_5__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct vfio_ap_queue* FUNC2 (struct device*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  match_apqn ; 
 TYPE_3__* matrix_dev ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vfio_ap_queue *FUNC6(
					struct ap_matrix_mdev *matrix_mdev,
					int apqn)
{
	struct vfio_ap_queue *q;
	struct device *dev;

	if (!FUNC5(FUNC0(apqn), matrix_mdev->matrix.apm))
		return NULL;
	if (!FUNC5(FUNC1(apqn), matrix_mdev->matrix.aqm))
		return NULL;

	dev = FUNC3(&matrix_dev->vfio_ap_drv->driver, NULL,
				 &apqn, match_apqn);
	if (!dev)
		return NULL;
	q = FUNC2(dev);
	q->matrix_mdev = matrix_mdev;
	FUNC4(dev);

	return q;
}