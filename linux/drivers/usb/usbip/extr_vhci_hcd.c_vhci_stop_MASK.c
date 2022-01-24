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
struct vhci_hcd {struct vhci_device* vdev; } ;
struct vhci_device {int /*<<< orphan*/  ud; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDEV_EVENT_REMOVED ; 
 int VHCI_HC_PORTS ; 
 TYPE_1__* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct vhci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vhci_attr_group ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct usb_hcd *hcd)
{
	struct vhci_hcd *vhci_hcd = FUNC3(hcd);
	int id, rhport;

	FUNC6("stop VHCI controller\n");

	/* 1. remove the userland interface of vhci_hcd */
	id = FUNC2(FUNC1(hcd));
	if (id == 0 && FUNC5(hcd)) {
		FUNC4(&FUNC0(hcd)->kobj, &vhci_attr_group);
		FUNC9();
	}

	/* 2. shutdown all the ports of vhci_hcd */
	for (rhport = 0; rhport < VHCI_HC_PORTS; rhport++) {
		struct vhci_device *vdev = &vhci_hcd->vdev[rhport];

		FUNC7(&vdev->ud, VDEV_EVENT_REMOVED);
		FUNC8(&vdev->ud);
	}
}