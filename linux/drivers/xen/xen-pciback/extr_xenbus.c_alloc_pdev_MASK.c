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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct xen_pcibk_device {int /*<<< orphan*/  op_work; scalar_t__ be_watching; int /*<<< orphan*/  evtchn_irq; int /*<<< orphan*/ * sh_info; int /*<<< orphan*/  dev_lock; struct xenbus_device* xdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_EVTCHN_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct xen_pcibk_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct xen_pcibk_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_pcibk_device*) ; 
 struct xen_pcibk_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_pcibk_do_op ; 
 scalar_t__ FUNC6 (struct xen_pcibk_device*) ; 

__attribute__((used)) static struct xen_pcibk_device *FUNC7(struct xenbus_device *xdev)
{
	struct xen_pcibk_device *pdev;

	pdev = FUNC4(sizeof(struct xen_pcibk_device), GFP_KERNEL);
	if (pdev == NULL)
		goto out;
	FUNC1(&xdev->dev, "allocated pdev @ 0x%p\n", pdev);

	pdev->xdev = xdev;

	FUNC5(&pdev->dev_lock);

	pdev->sh_info = NULL;
	pdev->evtchn_irq = INVALID_EVTCHN_IRQ;
	pdev->be_watching = 0;

	FUNC0(&pdev->op_work, xen_pcibk_do_op);

	if (FUNC6(pdev)) {
		FUNC3(pdev);
		pdev = NULL;
	}

	FUNC2(&xdev->dev, pdev);

out:
	return pdev;
}