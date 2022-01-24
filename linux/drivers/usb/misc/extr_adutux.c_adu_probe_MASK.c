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
struct usb_interface {int /*<<< orphan*/  dev; scalar_t__ minor; int /*<<< orphan*/ * altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  iSerialNumber; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct adu_device {scalar_t__ minor; int /*<<< orphan*/  serial_number; void* interrupt_out_urb; void* interrupt_out_buffer; void* interrupt_in_urb; void* interrupt_in_buffer; void* read_buffer_secondary; void* read_buffer_primary; int /*<<< orphan*/  interrupt_out_endpoint; int /*<<< orphan*/  interrupt_in_endpoint; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  udev; int /*<<< orphan*/  buflock; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 scalar_t__ ADU_MINOR_BASE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  adu_class ; 
 int /*<<< orphan*/  FUNC0 (struct adu_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct adu_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,char,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int FUNC16 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_interface*,struct adu_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *interface,
		     const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC5(interface);
	struct adu_device *dev = NULL;
	int retval = -ENOMEM;
	int in_end_size;
	int out_end_size;
	int res;

	/* allocate memory for our device state and initialize it */
	dev = FUNC7(sizeof(struct adu_device), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC10(&dev->mtx);
	FUNC11(&dev->buflock);
	dev->udev = FUNC15(udev);
	FUNC4(&dev->read_wait);
	FUNC4(&dev->write_wait);

	res = FUNC14(&interface->altsetting[0],
			NULL, NULL,
			&dev->interrupt_in_endpoint,
			&dev->interrupt_out_endpoint);
	if (res) {
		FUNC2(&interface->dev, "interrupt endpoints not found\n");
		retval = res;
		goto error;
	}

	in_end_size = FUNC13(dev->interrupt_in_endpoint);
	out_end_size = FUNC13(dev->interrupt_out_endpoint);

	dev->read_buffer_primary = FUNC6((4 * in_end_size), GFP_KERNEL);
	if (!dev->read_buffer_primary)
		goto error;

	/* debug code prime the buffer */
	FUNC9(dev->read_buffer_primary, 'a', in_end_size);
	FUNC9(dev->read_buffer_primary + in_end_size, 'b', in_end_size);
	FUNC9(dev->read_buffer_primary + (2 * in_end_size), 'c', in_end_size);
	FUNC9(dev->read_buffer_primary + (3 * in_end_size), 'd', in_end_size);

	dev->read_buffer_secondary = FUNC6((4 * in_end_size), GFP_KERNEL);
	if (!dev->read_buffer_secondary)
		goto error;

	/* debug code prime the buffer */
	FUNC9(dev->read_buffer_secondary, 'e', in_end_size);
	FUNC9(dev->read_buffer_secondary + in_end_size, 'f', in_end_size);
	FUNC9(dev->read_buffer_secondary + (2 * in_end_size), 'g', in_end_size);
	FUNC9(dev->read_buffer_secondary + (3 * in_end_size), 'h', in_end_size);

	dev->interrupt_in_buffer = FUNC6(in_end_size, GFP_KERNEL);
	if (!dev->interrupt_in_buffer)
		goto error;

	/* debug code prime the buffer */
	FUNC9(dev->interrupt_in_buffer, 'i', in_end_size);

	dev->interrupt_in_urb = FUNC12(0, GFP_KERNEL);
	if (!dev->interrupt_in_urb)
		goto error;
	dev->interrupt_out_buffer = FUNC6(out_end_size, GFP_KERNEL);
	if (!dev->interrupt_out_buffer)
		goto error;
	dev->interrupt_out_urb = FUNC12(0, GFP_KERNEL);
	if (!dev->interrupt_out_urb)
		goto error;

	if (!FUNC18(udev, udev->descriptor.iSerialNumber, dev->serial_number,
			sizeof(dev->serial_number))) {
		FUNC2(&interface->dev, "Could not retrieve serial number\n");
		retval = -EIO;
		goto error;
	}
	FUNC1(&interface->dev,"serial_number=%s", dev->serial_number);

	/* we can register the device now, as it is ready */
	FUNC17(interface, dev);

	retval = FUNC16(interface, &adu_class);

	if (retval) {
		/* something prevented us from registering this driver */
		FUNC2(&interface->dev, "Not able to get a minor for this device.\n");
		FUNC17(interface, NULL);
		goto error;
	}

	dev->minor = interface->minor;

	/* let the user know what node this device is now attached to */
	FUNC3(&interface->dev, "ADU%d %s now attached to /dev/usb/adutux%d\n",
		 FUNC8(udev->descriptor.idProduct), dev->serial_number,
		 (dev->minor - ADU_MINOR_BASE));

	return 0;

error:
	FUNC0(dev);
	return retval;
}