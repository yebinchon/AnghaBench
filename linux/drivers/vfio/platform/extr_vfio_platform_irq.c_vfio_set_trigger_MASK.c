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
struct vfio_platform_irq {int /*<<< orphan*/  hwirq; int /*<<< orphan*/  masked; struct eventfd_ctx* trigger; int /*<<< orphan*/  name; } ;
struct vfio_platform_device {int /*<<< orphan*/  name; struct vfio_platform_irq* irqs; } ;
struct eventfd_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 scalar_t__ FUNC0 (struct eventfd_ctx*) ; 
 int FUNC1 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct eventfd_ctx* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vfio_platform_irq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfio_platform_irq*) ; 

__attribute__((used)) static int FUNC11(struct vfio_platform_device *vdev, int index,
			    int fd, irq_handler_t handler)
{
	struct vfio_platform_irq *irq = &vdev->irqs[index];
	struct eventfd_ctx *trigger;
	int ret;

	if (irq->trigger) {
		FUNC6(irq->hwirq, IRQ_NOAUTOEN);
		FUNC5(irq->hwirq, irq);
		FUNC9(irq->name);
		FUNC4(irq->trigger);
		irq->trigger = NULL;
	}

	if (fd < 0) /* Disable only */
		return 0;

	irq->name = FUNC8(GFP_KERNEL, "vfio-irq[%d](%s)",
						irq->hwirq, vdev->name);
	if (!irq->name)
		return -ENOMEM;

	trigger = FUNC3(fd);
	if (FUNC0(trigger)) {
		FUNC9(irq->name);
		return FUNC1(trigger);
	}

	irq->trigger = trigger;

	FUNC7(irq->hwirq, IRQ_NOAUTOEN);
	ret = FUNC10(irq->hwirq, handler, 0, irq->name, irq);
	if (ret) {
		FUNC9(irq->name);
		FUNC4(trigger);
		irq->trigger = NULL;
		return ret;
	}

	if (!irq->masked)
		FUNC2(irq->hwirq);

	return 0;
}