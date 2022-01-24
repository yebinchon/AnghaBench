#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef  size_t u32 ;
struct xhci_hcd {TYPE_2__** devs; } ;
struct usb_device {int /*<<< orphan*/  portnum; scalar_t__ parent; } ;
struct TYPE_4__ {struct usb_device* udev; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,size_t) ; 

__attribute__((used)) static void FUNC5(struct xhci_hcd *xhci,
		union xhci_trb *event)
{
	u32 slot_id;
	struct usb_device *udev;

	slot_id = FUNC0(FUNC1(event->generic.field[3]));
	if (!xhci->devs[slot_id]) {
		FUNC4(xhci, "Device Notification event for "
				"unused slot %u\n", slot_id);
		return;
	}

	FUNC3(xhci, "Device Wake Notification event for slot ID %u\n",
			slot_id);
	udev = xhci->devs[slot_id]->udev;
	if (udev && udev->parent)
		FUNC2(udev->parent, udev->portnum);
}