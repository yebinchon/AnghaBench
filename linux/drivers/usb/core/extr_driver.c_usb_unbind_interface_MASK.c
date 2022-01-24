#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  is_prepared; } ;
struct TYPE_10__ {TYPE_3__ power; } ;
struct usb_interface {int needs_altsetting0; scalar_t__ needs_remote_wakeup; int /*<<< orphan*/  condition; TYPE_6__* altsetting; TYPE_4__ dev; TYPE_2__* cur_altsetting; } ;
struct usb_host_endpoint {scalar_t__ streams; } ;
struct usb_driver {scalar_t__ supports_autosuspend; int /*<<< orphan*/  (* disconnect ) (struct usb_interface*) ;int /*<<< orphan*/  soft_unbind; scalar_t__ disable_hub_initiated_lpm; } ;
struct usb_device {scalar_t__ state; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_11__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_12__ {TYPE_5__ desc; } ;
struct TYPE_7__ {int bNumEndpoints; scalar_t__ bAlternateSetting; } ;
struct TYPE_8__ {TYPE_1__ desc; struct usb_host_endpoint* endpoint; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_INTERFACE_UNBINDING ; 
 int /*<<< orphan*/  USB_INTERFACE_UNBOUND ; 
 int /*<<< orphan*/  USB_MAXENDPOINTS ; 
 scalar_t__ USB_STATE_NOTATTACHED ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_host_endpoint**) ; 
 struct usb_host_endpoint** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 struct usb_driver* FUNC6 (int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC7 (struct device*) ; 
 int FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,struct usb_interface*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,struct usb_interface*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,struct usb_host_endpoint**,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*) ; 

__attribute__((used)) static int FUNC17(struct device *dev)
{
	struct usb_driver *driver = FUNC6(dev->driver);
	struct usb_interface *intf = FUNC7(dev);
	struct usb_host_endpoint *ep, **eps = NULL;
	struct usb_device *udev;
	int i, j, error, r;
	int lpm_disable_error = -ENODEV;

	intf->condition = USB_INTERFACE_UNBINDING;

	/* Autoresume for set_interface call below */
	udev = FUNC0(intf);
	error = FUNC8(udev);

	/* If hub-initiated LPM policy may change, attempt to disable LPM until
	 * the driver is unbound.  If LPM isn't disabled, that's fine because it
	 * wouldn't be enabled unless all the bound interfaces supported
	 * hub-initiated LPM.
	 */
	if (driver->disable_hub_initiated_lpm)
		lpm_disable_error = FUNC15(udev);

	/*
	 * Terminate all URBs for this interface unless the driver
	 * supports "soft" unbinding and the device is still present.
	 */
	if (!driver->soft_unbind || udev->state == USB_STATE_NOTATTACHED)
		FUNC10(udev, intf, false);

	driver->disconnect(intf);

	/* Free streams */
	for (i = 0, j = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
		ep = &intf->cur_altsetting->endpoint[i];
		if (ep->streams == 0)
			continue;
		if (j == 0) {
			eps = FUNC2(USB_MAXENDPOINTS, sizeof(void *),
				      GFP_KERNEL);
			if (!eps)
				break;
		}
		eps[j++] = ep;
	}
	if (j) {
		FUNC12(intf, eps, j, GFP_KERNEL);
		FUNC1(eps);
	}

	/* Reset other interface state.
	 * We cannot do a Set-Interface if the device is suspended or
	 * if it is prepared for a system sleep (since installing a new
	 * altsetting means creating new endpoint device entries).
	 * When either of these happens, defer the Set-Interface.
	 */
	if (intf->cur_altsetting->desc.bAlternateSetting == 0) {
		/* Already in altsetting 0 so skip Set-Interface.
		 * Just re-enable it without affecting the endpoint toggles.
		 */
		FUNC11(udev, intf, false);
	} else if (!error && !intf->dev.power.is_prepared) {
		r = FUNC13(udev, intf->altsetting[0].
				desc.bInterfaceNumber, 0);
		if (r < 0)
			intf->needs_altsetting0 = 1;
	} else {
		intf->needs_altsetting0 = 1;
	}
	FUNC14(intf, NULL);

	intf->condition = USB_INTERFACE_UNBOUND;
	intf->needs_remote_wakeup = 0;

	/* Attempt to re-enable USB3 LPM, if the disable succeeded. */
	if (!lpm_disable_error)
		FUNC16(udev);

	/* Unbound interfaces are always runtime-PM-disabled and -suspended */
	if (driver->supports_autosuspend)
		FUNC3(dev);
	FUNC4(dev);

	if (!error)
		FUNC9(udev);

	return 0;
}