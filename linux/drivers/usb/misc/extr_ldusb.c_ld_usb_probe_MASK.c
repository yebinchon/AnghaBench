#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {scalar_t__ minor; int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {void* bMaxPacketSize0; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct ld_usb {int interrupt_in_endpoint_size; TYPE_2__* interrupt_out_endpoint; scalar_t__ interrupt_out_interval; TYPE_2__* interrupt_in_endpoint; scalar_t__ interrupt_in_interval; void* interrupt_out_urb; int /*<<< orphan*/  interrupt_out_buffer; void* interrupt_out_endpoint_size; void* interrupt_in_urb; void* interrupt_in_buffer; int /*<<< orphan*/  ring_buffer; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; struct usb_interface* intf; int /*<<< orphan*/  rbsl; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {scalar_t__ bInterval; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DEVICE_ID_LD_CASSY ; 
 int USB_DEVICE_ID_LD_COM3LAB ; 
 scalar_t__ USB_LD_MINOR_BASE ; 
 int /*<<< orphan*/  USB_MAJOR ; 
 int USB_VENDOR_ID_LD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 struct ld_usb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ld_usb_class ; 
 int /*<<< orphan*/  FUNC10 (struct ld_usb*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ min_interrupt_in_interval ; 
 scalar_t__ min_interrupt_out_interval ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ring_buffer_size ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC15 (TYPE_2__*) ; 
 int FUNC16 (struct usb_host_interface*,TYPE_2__**) ; 
 int FUNC17 (struct usb_host_interface*,TYPE_2__**) ; 
 int FUNC18 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_interface*,struct ld_usb*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,int,char*,int) ; 
 int /*<<< orphan*/  write_buffer_size ; 

__attribute__((used)) static int FUNC21(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC4(intf);
	struct ld_usb *dev = NULL;
	struct usb_host_interface *iface_desc;
	char *buffer;
	int retval = -ENOMEM;
	int res;

	/* allocate memory for our device state and initialize it */

	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		goto exit;
	FUNC12(&dev->mutex);
	FUNC13(&dev->rbsl);
	dev->intf = intf;
	FUNC3(&dev->read_wait);
	FUNC3(&dev->write_wait);

	/* workaround for early firmware versions on fast computers */
	if ((FUNC11(udev->descriptor.idVendor) == USB_VENDOR_ID_LD) &&
	    ((FUNC11(udev->descriptor.idProduct) == USB_DEVICE_ID_LD_CASSY) ||
	     (FUNC11(udev->descriptor.idProduct) == USB_DEVICE_ID_LD_COM3LAB)) &&
	    (FUNC11(udev->descriptor.bcdDevice) <= 0x103)) {
		buffer = FUNC7(256, GFP_KERNEL);
		if (!buffer)
			goto error;
		/* usb_string makes SETUP+STALL to leave always ControlReadLoop */
		FUNC20(udev, 255, buffer, 256);
		FUNC6(buffer);
	}

	iface_desc = intf->cur_altsetting;

	res = FUNC16(iface_desc,
			&dev->interrupt_in_endpoint);
	if (res) {
		FUNC0(&intf->dev, "Interrupt in endpoint not found\n");
		retval = res;
		goto error;
	}

	res = FUNC17(iface_desc,
			&dev->interrupt_out_endpoint);
	if (res)
		FUNC2(&intf->dev, "Interrupt out endpoint not found (using control endpoint instead)\n");

	dev->interrupt_in_endpoint_size = FUNC15(dev->interrupt_in_endpoint);
	dev->ring_buffer = FUNC5(ring_buffer_size,
			sizeof(size_t) + dev->interrupt_in_endpoint_size,
			GFP_KERNEL);
	if (!dev->ring_buffer)
		goto error;
	dev->interrupt_in_buffer = FUNC7(dev->interrupt_in_endpoint_size, GFP_KERNEL);
	if (!dev->interrupt_in_buffer)
		goto error;
	dev->interrupt_in_urb = FUNC14(0, GFP_KERNEL);
	if (!dev->interrupt_in_urb)
		goto error;
	dev->interrupt_out_endpoint_size = dev->interrupt_out_endpoint ? FUNC15(dev->interrupt_out_endpoint) :
									 udev->descriptor.bMaxPacketSize0;
	dev->interrupt_out_buffer =
		FUNC8(write_buffer_size,
			      dev->interrupt_out_endpoint_size, GFP_KERNEL);
	if (!dev->interrupt_out_buffer)
		goto error;
	dev->interrupt_out_urb = FUNC14(0, GFP_KERNEL);
	if (!dev->interrupt_out_urb)
		goto error;
	dev->interrupt_in_interval = min_interrupt_in_interval > dev->interrupt_in_endpoint->bInterval ? min_interrupt_in_interval : dev->interrupt_in_endpoint->bInterval;
	if (dev->interrupt_out_endpoint)
		dev->interrupt_out_interval = min_interrupt_out_interval > dev->interrupt_out_endpoint->bInterval ? min_interrupt_out_interval : dev->interrupt_out_endpoint->bInterval;

	/* we can register the device now, as it is ready */
	FUNC19(intf, dev);

	retval = FUNC18(intf, &ld_usb_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC0(&intf->dev, "Not able to get a minor for this device.\n");
		FUNC19(intf, NULL);
		goto error;
	}

	/* let the user know what node this device is now attached to */
	FUNC1(&intf->dev, "LD USB Device #%d now attached to major %d minor %d\n",
		(intf->minor - USB_LD_MINOR_BASE), USB_MAJOR, intf->minor);

exit:
	return retval;

error:
	FUNC10(dev);

	return retval;
}