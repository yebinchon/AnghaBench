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
struct xen_pci_sharedinfo {scalar_t__ flags; } ;
struct pcifront_device {int irq; struct xen_pci_sharedinfo* sh_info; int /*<<< orphan*/  op_work; int /*<<< orphan*/  gnt_ref; int /*<<< orphan*/  evtchn; int /*<<< orphan*/  sh_info_lock; int /*<<< orphan*/  root_buses; struct xenbus_device* xdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_EVTCHN ; 
 int /*<<< orphan*/  INVALID_GRANT_REF ; 
 int /*<<< orphan*/  _XEN_PCIB_AERHANDLER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,struct pcifront_device*,struct xen_pci_sharedinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcifront_device*) ; 
 struct pcifront_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcifront_do_aer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pcifront_device *FUNC9(struct xenbus_device *xdev)
{
	struct pcifront_device *pdev;

	pdev = FUNC6(sizeof(struct pcifront_device), GFP_KERNEL);
	if (pdev == NULL)
		goto out;

	pdev->sh_info =
	    (struct xen_pci_sharedinfo *)FUNC2(GFP_KERNEL);
	if (pdev->sh_info == NULL) {
		FUNC5(pdev);
		pdev = NULL;
		goto out;
	}
	pdev->sh_info->flags = 0;

	/*Flag for registering PV AER handler*/
	FUNC7(_XEN_PCIB_AERHANDLER, (void *)&pdev->sh_info->flags);

	FUNC4(&xdev->dev, pdev);
	pdev->xdev = xdev;

	FUNC0(&pdev->root_buses);

	FUNC8(&pdev->sh_info_lock);

	pdev->evtchn = INVALID_EVTCHN;
	pdev->gnt_ref = INVALID_GRANT_REF;
	pdev->irq = -1;

	FUNC1(&pdev->op_work, pcifront_do_aer);

	FUNC3(&xdev->dev, "Allocated pdev @ 0x%p pdev->sh_info @ 0x%p\n",
		pdev, pdev->sh_info);
out:
	return pdev;
}