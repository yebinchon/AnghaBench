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
struct xen_pcibk_device {scalar_t__ evtchn_irq; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/ * sh_info; int /*<<< orphan*/  xdev; int /*<<< orphan*/  op_work; } ;

/* Variables and functions */
 scalar_t__ INVALID_EVTCHN_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct xen_pcibk_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct xen_pcibk_device *pdev)
{
	FUNC1(&pdev->dev_lock);
	/* Ensure the guest can't trigger our handler before removing devices */
	if (pdev->evtchn_irq != INVALID_EVTCHN_IRQ) {
		FUNC3(pdev->evtchn_irq, pdev);
		pdev->evtchn_irq = INVALID_EVTCHN_IRQ;
	}

	/* If the driver domain started an op, make sure we complete it
	 * before releasing the shared memory */

	FUNC0(&pdev->op_work);

	if (pdev->sh_info != NULL) {
		FUNC4(pdev->xdev, pdev->sh_info);
		pdev->sh_info = NULL;
	}
	FUNC2(&pdev->dev_lock);
}