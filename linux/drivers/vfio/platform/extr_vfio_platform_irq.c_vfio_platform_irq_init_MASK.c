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
struct vfio_platform_irq {int dummy; } ;
struct vfio_platform_device {int (* get_irq ) (struct vfio_platform_device*,int) ;int num_irqs; TYPE_1__* irqs; } ;
struct TYPE_3__ {int flags; int count; int hwirq; int masked; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQ_TYPE_LEVEL_MASK ; 
 int VFIO_IRQ_INFO_AUTOMASKED ; 
 int VFIO_IRQ_INFO_EVENTFD ; 
 int VFIO_IRQ_INFO_MASKABLE ; 
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vfio_platform_device*,int) ; 
 int FUNC5 (struct vfio_platform_device*,int) ; 

int FUNC6(struct vfio_platform_device *vdev)
{
	int cnt = 0, i;

	while (vdev->get_irq(vdev, cnt) >= 0)
		cnt++;

	vdev->irqs = FUNC1(cnt, sizeof(struct vfio_platform_irq), GFP_KERNEL);
	if (!vdev->irqs)
		return -ENOMEM;

	for (i = 0; i < cnt; i++) {
		int hwirq = vdev->get_irq(vdev, i);

		if (hwirq < 0)
			goto err;

		FUNC3(&vdev->irqs[i].lock);

		vdev->irqs[i].flags = VFIO_IRQ_INFO_EVENTFD;

		if (FUNC0(hwirq) & IRQ_TYPE_LEVEL_MASK)
			vdev->irqs[i].flags |= VFIO_IRQ_INFO_MASKABLE
						| VFIO_IRQ_INFO_AUTOMASKED;

		vdev->irqs[i].count = 1;
		vdev->irqs[i].hwirq = hwirq;
		vdev->irqs[i].masked = false;
	}

	vdev->num_irqs = cnt;

	return 0;
err:
	FUNC2(vdev->irqs);
	return -EINVAL;
}