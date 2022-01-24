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
struct vfio_ap_queue {int /*<<< orphan*/  apqn; } ;
struct ap_device {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct vfio_ap_queue* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_ap_queue*) ; 
 TYPE_1__* matrix_dev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vfio_ap_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 

__attribute__((used)) static void FUNC9(struct ap_device *apdev)
{
	struct vfio_ap_queue *q;
	int apid, apqi;

	FUNC5(&matrix_dev->lock);
	q = FUNC2(&apdev->device);
	FUNC3(&apdev->device, NULL);
	apid = FUNC0(q->apqn);
	apqi = FUNC1(q->apqn);
	FUNC8(apid, apqi, 1);
	FUNC7(q);
	FUNC4(q);
	FUNC6(&matrix_dev->lock);
}