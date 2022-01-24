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
struct vfio_platform_device {int num_irqs; int /*<<< orphan*/  irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_platform_device*,int,int,int /*<<< orphan*/ *) ; 

void FUNC2(struct vfio_platform_device *vdev)
{
	int i;

	for (i = 0; i < vdev->num_irqs; i++)
		FUNC1(vdev, i, -1, NULL);

	vdev->num_irqs = 0;
	FUNC0(vdev->irqs);
}