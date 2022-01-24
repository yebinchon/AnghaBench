#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xenbus_transaction {int dummy; } ;
struct pcifront_device {int irq; TYPE_1__* xdev; int /*<<< orphan*/  evtchn; int /*<<< orphan*/  gnt_ref; int /*<<< orphan*/  sh_info; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  XEN_PCI_MAGIC ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  pcifront_handler_aer ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xenbus_transaction,int) ; 
 int FUNC8 (struct xenbus_transaction*) ; 

__attribute__((used)) static int FUNC9(struct pcifront_device *pdev)
{
	int err = 0;
	struct xenbus_transaction trans;
	grant_ref_t gref;

	err = FUNC4(pdev->xdev, pdev->sh_info, 1, &gref);
	if (err < 0)
		goto out;

	pdev->gnt_ref = gref;

	err = FUNC2(pdev->xdev, &pdev->evtchn);
	if (err)
		goto out;

	err = FUNC0(pdev->evtchn, pcifront_handler_aer,
		0, "pcifront", pdev);

	if (err < 0)
		return err;

	pdev->irq = err;

do_publish:
	err = FUNC8(&trans);
	if (err) {
		FUNC3(pdev->xdev, err,
				 "Error writing configuration for backend "
				 "(start transaction)");
		goto out;
	}

	err = FUNC5(trans, pdev->xdev->nodename,
			    "pci-op-ref", "%u", pdev->gnt_ref);
	if (!err)
		err = FUNC5(trans, pdev->xdev->nodename,
				    "event-channel", "%u", pdev->evtchn);
	if (!err)
		err = FUNC5(trans, pdev->xdev->nodename,
				    "magic", XEN_PCI_MAGIC);

	if (err) {
		FUNC7(trans, 1);
		FUNC3(pdev->xdev, err,
				 "Error writing configuration for backend");
		goto out;
	} else {
		err = FUNC7(trans, 0);
		if (err == -EAGAIN)
			goto do_publish;
		else if (err) {
			FUNC3(pdev->xdev, err,
					 "Error completing transaction "
					 "for backend");
			goto out;
		}
	}

	FUNC6(pdev->xdev, XenbusStateInitialised);

	FUNC1(&pdev->xdev->dev, "publishing successful!\n");

out:
	return err;
}