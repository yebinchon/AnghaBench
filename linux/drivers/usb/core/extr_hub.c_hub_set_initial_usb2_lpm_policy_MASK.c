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
struct usb_hub {TYPE_3__** ports; } ;
struct usb_device {int portnum; int usb2_hw_lpm_allowed; TYPE_2__* bos; int /*<<< orphan*/  usb2_hw_lpm_capable; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int connect_type; } ;
struct TYPE_5__ {TYPE_1__* ext_cap; } ;
struct TYPE_4__ {int bmAttributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_BESL_SUPPORT ; 
 int USB_PORT_CONNECT_TYPE_HARD_WIRED ; 
 int USB_PORT_CONNECT_TYPE_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 struct usb_hub* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_device *udev)
{
	struct usb_hub *hub = FUNC2(udev->parent);
	int connect_type = USB_PORT_CONNECT_TYPE_UNKNOWN;

	if (!udev->usb2_hw_lpm_capable || !udev->bos)
		return;

	if (hub)
		connect_type = hub->ports[udev->portnum - 1]->connect_type;

	if ((udev->bos->ext_cap->bmAttributes & FUNC0(USB_BESL_SUPPORT)) ||
			connect_type == USB_PORT_CONNECT_TYPE_HARD_WIRED) {
		udev->usb2_hw_lpm_allowed = 1;
		FUNC1(udev);
	}
}