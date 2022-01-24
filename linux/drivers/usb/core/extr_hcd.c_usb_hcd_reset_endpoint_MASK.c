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
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* endpoint_reset ) (struct usb_hcd*,struct usb_host_endpoint*) ;} ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*,struct usb_host_endpoint*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int,int,int /*<<< orphan*/ ) ; 

void FUNC6(struct usb_device *udev,
			    struct usb_host_endpoint *ep)
{
	struct usb_hcd *hcd = FUNC0(udev->bus);

	if (hcd->driver->endpoint_reset)
		hcd->driver->endpoint_reset(hcd, ep);
	else {
		int epnum = FUNC3(&ep->desc);
		int is_out = FUNC2(&ep->desc);
		int is_control = FUNC4(&ep->desc);

		FUNC5(udev, epnum, is_out, 0);
		if (is_control)
			FUNC5(udev, epnum, !is_out, 0);
	}
}