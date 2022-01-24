#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct usb_port {TYPE_2__ dev; } ;
struct usb_hub {int /*<<< orphan*/  child_usage_bits; struct usb_port** ports; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct usb_device {int portnum; TYPE_1__ dev; int /*<<< orphan*/  ep0; scalar_t__ parent; int /*<<< orphan*/  devnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  device_state_lock ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*) ; 
 struct usb_hub* FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_device*) ; 

void FUNC22(struct usb_device **pdev)
{
	struct usb_port *port_dev = NULL;
	struct usb_device *udev = *pdev;
	struct usb_hub *hub = NULL;
	int port1 = 1;

	/* mark the device as inactive, so any further urb submissions for
	 * this device (and any of its children) will fail immediately.
	 * this quiesces everything except pending urbs.
	 */
	FUNC20(udev, USB_STATE_NOTATTACHED);
	FUNC1(&udev->dev, "USB disconnect, device number %d\n",
			udev->devnum);

	/*
	 * Ensure that the pm runtime code knows that the USB device
	 * is in the process of being disconnected.
	 */
	FUNC5(&udev->dev);

	FUNC18(udev);

	FUNC3(udev);

	/* deallocate hcd/hardware state ... nuking all pending urbs and
	 * cleaning up all state associated with the current configuration
	 * so that the hardware is now fully quiesced.
	 */
	FUNC0(&udev->dev, "unregistering device\n");
	FUNC15(udev, 0);
	FUNC16(udev);

	if (udev->parent) {
		port1 = udev->portnum;
		hub = FUNC17(udev->parent);
		port_dev = hub->ports[port1 - 1];

		FUNC12(&udev->dev.kobj, "port");
		FUNC12(&port_dev->dev.kobj, "device");

		/*
		 * As usb_port_runtime_resume() de-references udev, make
		 * sure no resumes occur during removal
		 */
		if (!FUNC14(port1, hub->child_usage_bits))
			FUNC6(&port_dev->dev);
	}

	FUNC19(&udev->ep0);
	FUNC21(udev);

	/* Unregister the device.  The device driver is responsible
	 * for de-configuring the device and invoking the remove-device
	 * notifier chain (used by usbfs and possibly others).
	 */
	FUNC2(&udev->dev);

	/* Free the device number and delete the parent's children[]
	 * (or root_hub) pointer.
	 */
	FUNC9(udev);

	/* Avoid races with recursively_mark_NOTATTACHED() */
	FUNC10(&device_state_lock);
	*pdev = NULL;
	FUNC11(&device_state_lock);

	if (port_dev && FUNC13(port1, hub->child_usage_bits))
		FUNC7(&port_dev->dev);

	FUNC4(udev);

	FUNC8(&udev->dev);
}