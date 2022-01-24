#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vhci_hcd {int /*<<< orphan*/  seqnum; struct vhci_device* vdev; TYPE_1__* vhci; } ;
struct vhci_device {int rhport; } ;
struct TYPE_6__ {int otg_port; } ;
struct usb_hcd {int uses_new_polling; TYPE_2__ self; scalar_t__ power_budget; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int VHCI_HC_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 TYPE_3__* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct vhci_hcd* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  vhci_attr_group ; 
 int /*<<< orphan*/  FUNC12 (struct vhci_device*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct usb_hcd *hcd)
{
	struct vhci_hcd *vhci_hcd = FUNC5(hcd);
	int id, rhport;
	int err;

	FUNC11("enter vhci_start\n");

	if (FUNC10(hcd))
		FUNC8(&vhci_hcd->vhci->lock);

	/* initialize private data of usb_hcd */

	for (rhport = 0; rhport < VHCI_HC_PORTS; rhport++) {
		struct vhci_device *vdev = &vhci_hcd->vdev[rhport];

		FUNC12(vdev);
		vdev->rhport = rhport;
	}

	FUNC0(&vhci_hcd->seqnum, 0);

	hcd->power_budget = 0; /* no limit */
	hcd->uses_new_polling = 1;

#ifdef CONFIG_USB_OTG
	hcd->self.otg_port = 1;
#endif

	id = FUNC4(FUNC3(hcd));
	if (id < 0) {
		FUNC6("invalid vhci name %s\n", FUNC3(hcd));
		return -EINVAL;
	}

	/* vhci_hcd is now ready to be controlled through sysfs */
	if (id == 0 && FUNC10(hcd)) {
		err = FUNC14();
		if (err) {
			FUNC1(FUNC2(hcd), "init attr group failed, err = %d\n", err);
			return err;
		}
		err = FUNC9(&FUNC2(hcd)->kobj, &vhci_attr_group);
		if (err) {
			FUNC1(FUNC2(hcd), "create sysfs files failed, err = %d\n", err);
			FUNC13();
			return err;
		}
		FUNC7("created sysfs %s\n", FUNC3(hcd));
	}

	return 0;
}