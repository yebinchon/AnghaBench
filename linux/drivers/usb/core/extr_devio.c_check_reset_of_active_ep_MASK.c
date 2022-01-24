#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_host_endpoint {int /*<<< orphan*/  urb_list; } ;
struct usb_device {int /*<<< orphan*/  dev; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 unsigned int USB_DIR_IN ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct usb_device *udev,
		unsigned int epnum, char *ioctl_name)
{
	struct usb_host_endpoint **eps;
	struct usb_host_endpoint *ep;

	eps = (epnum & USB_DIR_IN) ? udev->ep_in : udev->ep_out;
	ep = eps[epnum & 0x0f];
	if (ep && !FUNC1(&ep->urb_list))
		FUNC0(&udev->dev, "Process %d (%s) called USBDEVFS_%s for active endpoint 0x%02x\n",
				FUNC2(current), current->comm,
				ioctl_name, epnum);
}