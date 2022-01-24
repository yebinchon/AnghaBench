#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  kobj; } ;
struct usb_port {TYPE_7__ dev; } ;
struct usb_hub {int /*<<< orphan*/  child_usage_bits; struct usb_port** ports; } ;
struct TYPE_17__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  devt; } ;
struct usb_device {int devnum; int portnum; TYPE_2__ dev; int /*<<< orphan*/  ep0; scalar_t__ parent; scalar_t__ manufacturer; scalar_t__ product; scalar_t__ serial; TYPE_1__* bus; } ;
struct TYPE_16__ {int busnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_DEVICE_MAJOR ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ *,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*) ; 
 int FUNC23 (struct usb_device*) ; 
 struct usb_hub* FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC27(struct usb_device *udev)
{
	int err;

	if (udev->parent) {
		/* Initialize non-root-hub device wakeup to disabled;
		 * device (un)configuration controls wakeup capable
		 * sysfs power/wakeup controls wakeup enabled/disabled
		 */
		FUNC7(&udev->dev, 0);
	}

	/* Tell the runtime-PM framework the device is active */
	FUNC13(&udev->dev);
	FUNC10(&udev->dev);
	FUNC15(&udev->dev);
	FUNC9(&udev->dev);

	/* By default, forbid autosuspend for all devices.  It will be
	 * allowed for hubs during binding.
	 */
	FUNC22(udev);

	err = FUNC23(udev);	/* Read descriptors */
	if (err < 0)
		goto fail;
	FUNC3(&udev->dev, "udev %d, busnum %d, minor = %d\n",
			udev->devnum, udev->bus->busnum,
			(((udev->bus->busnum-1) * 128) + (udev->devnum-1)));
	/* export the usbdev device-node for libusb */
	udev->dev.devt = FUNC0(USB_DEVICE_MAJOR,
			(((udev->bus->busnum-1) * 128) + (udev->devnum-1)));

	/* Tell the world! */
	FUNC2(udev);

	if (udev->serial)
		FUNC1(udev->serial, FUNC17(udev->serial));
	if (udev->product)
		FUNC1(udev->product, FUNC17(udev->product));
	if (udev->manufacturer)
		FUNC1(udev->manufacturer,
				      FUNC17(udev->manufacturer));

	FUNC6(&udev->dev);

	/* check whether the hub or firmware marks this port as non-removable */
	if (udev->parent)
		FUNC16(udev);

	/* Register the device.  The device driver is responsible
	 * for configuring the device and invoking the add-device
	 * notifier chain (used by usbfs and possibly others).
	 */
	err = FUNC5(&udev->dev);
	if (err) {
		FUNC4(&udev->dev, "can't device_add, error %d\n", err);
		goto fail;
	}

	/* Create link files between child device and usb port device. */
	if (udev->parent) {
		struct usb_hub *hub = FUNC24(udev->parent);
		int port1 = udev->portnum;
		struct usb_port	*port_dev = hub->ports[port1 - 1];

		err = FUNC18(&udev->dev.kobj,
				&port_dev->dev.kobj, "port");
		if (err)
			goto fail;

		err = FUNC18(&port_dev->dev.kobj,
				&udev->dev.kobj, "device");
		if (err) {
			FUNC19(&udev->dev.kobj, "port");
			goto fail;
		}

		if (!FUNC20(port1, hub->child_usage_bits))
			FUNC11(&port_dev->dev);
	}

	(void) FUNC21(&udev->dev, &udev->ep0, udev);
	FUNC25(udev);
	FUNC12(&udev->dev);
	return err;

fail:
	FUNC26(udev, USB_STATE_NOTATTACHED);
	FUNC8(&udev->dev);
	FUNC14(&udev->dev);
	return err;
}