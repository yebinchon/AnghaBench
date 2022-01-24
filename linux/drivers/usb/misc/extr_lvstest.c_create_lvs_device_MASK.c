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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_hcd {TYPE_3__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;
struct usb_device {TYPE_2__ ep0; int /*<<< orphan*/  speed; int /*<<< orphan*/  bus; } ;
struct lvs_rh {int /*<<< orphan*/  portnum; int /*<<< orphan*/  present; } ;
struct TYPE_6__ {scalar_t__ (* enable_device ) (struct usb_hcd*,struct usb_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  USB_SPEED_SUPER ; 
 int /*<<< orphan*/  USB_STATE_DEFAULT ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 scalar_t__ FUNC4 (struct usb_hcd*,struct usb_device*) ; 
 struct usb_device* FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lvs_rh* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_device *FUNC9(struct usb_interface *intf)
{
	struct usb_device *udev, *hdev;
	struct usb_hcd *hcd;
	struct lvs_rh *lvs = FUNC6(intf);

	if (!lvs->present) {
		FUNC2(&intf->dev, "No LVS device is present\n");
		return NULL;
	}

	hdev = FUNC3(intf);
	hcd = FUNC0(hdev->bus);

	udev = FUNC5(hdev, hdev->bus, lvs->portnum);
	if (!udev) {
		FUNC2(&intf->dev, "Could not allocate lvs udev\n");
		return NULL;
	}
	udev->speed = USB_SPEED_SUPER;
	udev->ep0.desc.wMaxPacketSize = FUNC1(512);
	FUNC8(udev, USB_STATE_DEFAULT);

	if (hcd->driver->enable_device) {
		if (hcd->driver->enable_device(hcd, udev) < 0) {
			FUNC2(&intf->dev, "Failed to enable\n");
			FUNC7(udev);
			return NULL;
		}
	}

	return udev;
}