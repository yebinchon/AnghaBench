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
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct fhci_hcd {TYPE_3__* vroot_hub; int /*<<< orphan*/  lock; int /*<<< orphan*/  usb_lld; } ;
struct TYPE_5__ {scalar_t__ wPortChange; scalar_t__ wPortStatus; } ;
struct TYPE_4__ {scalar_t__ wHubChange; scalar_t__ wHubStatus; } ;
struct TYPE_6__ {int dev_num; TYPE_2__ port; TYPE_1__ hub; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_hcd*) ; 
 int FUNC3 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct fhci_hcd*) ; 
 int FUNC5 (struct fhci_hcd*) ; 
 struct fhci_hcd* FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd)
{
	int ret;
	struct fhci_hcd *fhci = FUNC6(hcd);

	ret = FUNC3(fhci);
	if (ret) {
		FUNC1(fhci, "failed to allocate memory\n");
		goto err;
	}

	fhci->usb_lld = FUNC0(fhci);
	if (!fhci->usb_lld) {
		FUNC1(fhci, "low level driver config failed\n");
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC5(fhci);
	if (ret) {
		FUNC1(fhci, "low level driver initialize failed\n");
		goto err;
	}

	FUNC7(&fhci->lock);

	/* connect the virtual root hub */
	fhci->vroot_hub->dev_num = 1;	/* this field may be needed to fix */
	fhci->vroot_hub->hub.wHubStatus = 0;
	fhci->vroot_hub->hub.wHubChange = 0;
	fhci->vroot_hub->port.wPortStatus = 0;
	fhci->vroot_hub->port.wPortChange = 0;

	hcd->state = HC_STATE_RUNNING;

	/*
	 * From here on, hub_wq concurrently accesses the root
	 * hub; drivers will be talking to enumerated devices.
	 * (On restart paths, hub_wq already knows about the root
	 * hub and could find work as soon as we wrote FLAG_CF.)
	 *
	 * Before this point the HC was idle/ready.  After, hub_wq
	 * and device drivers may start it running.
	 */
	FUNC4(fhci);
	return 0;
err:
	FUNC2(fhci);
	return ret;
}