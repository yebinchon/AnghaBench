#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vhci_hcd {struct vhci* vhci; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct vhci_device {TYPE_3__ ud; } ;
struct vhci {int /*<<< orphan*/  lock; TYPE_2__* vhci_hcd_ss; TYPE_1__* vhci_hcd_hs; } ;
struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_8__ {struct platform_device* pdev; } ;
struct TYPE_6__ {struct vhci_device* vdev; } ;
struct TYPE_5__ {struct vhci_device* vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUB_SPEED_HIGH ; 
 int /*<<< orphan*/  HUB_SPEED_SUPER ; 
 int VHCI_HC_PORTS ; 
 int VHCI_PORTS ; 
 struct vhci_hcd* FUNC0 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,int,struct vhci_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_4__* vhcis ; 

__attribute__((used)) static ssize_t FUNC8(int pdev_nr, char *out)
{
	struct platform_device *pdev = vhcis[pdev_nr].pdev;
	struct vhci *vhci;
	struct usb_hcd *hcd;
	struct vhci_hcd *vhci_hcd;
	char *s = out;
	int i;
	unsigned long flags;

	if (!pdev || !out) {
		FUNC7("show status error\n");
		return 0;
	}

	hcd = FUNC1(pdev);
	vhci_hcd = FUNC0(hcd);
	vhci = vhci_hcd->vhci;

	FUNC4(&vhci->lock, flags);

	for (i = 0; i < VHCI_HC_PORTS; i++) {
		struct vhci_device *vdev = &vhci->vhci_hcd_hs->vdev[i];

		FUNC3(&vdev->ud.lock);
		FUNC2(&out, HUB_SPEED_HIGH,
			       pdev_nr * VHCI_PORTS + i, vdev);
		FUNC5(&vdev->ud.lock);
	}

	for (i = 0; i < VHCI_HC_PORTS; i++) {
		struct vhci_device *vdev = &vhci->vhci_hcd_ss->vdev[i];

		FUNC3(&vdev->ud.lock);
		FUNC2(&out, HUB_SPEED_SUPER,
			       pdev_nr * VHCI_PORTS + VHCI_HC_PORTS + i, vdev);
		FUNC5(&vdev->ud.lock);
	}

	FUNC6(&vhci->lock, flags);

	return out - s;
}