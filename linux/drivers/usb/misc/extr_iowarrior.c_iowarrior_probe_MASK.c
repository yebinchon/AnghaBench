#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; scalar_t__ minor; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_11__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_4__ desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct iowarrior {scalar_t__ product_id; int report_size; int present; scalar_t__ minor; int /*<<< orphan*/  chip_serial; TYPE_5__* interface; int /*<<< orphan*/  read_queue; TYPE_6__* int_in_endpoint; int /*<<< orphan*/  int_in_buffer; struct usb_device* udev; int /*<<< orphan*/  int_in_urb; int /*<<< orphan*/  int_out_endpoint; int /*<<< orphan*/  submitted; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  write_busy; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  overflow_flag; int /*<<< orphan*/  read_idx; int /*<<< orphan*/  intr_idx; int /*<<< orphan*/  mutex; } ;
struct TYPE_13__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_12__ {TYPE_3__* cur_altsetting; } ;
struct TYPE_9__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IOWARRIOR_MINOR_BASE ; 
 int /*<<< orphan*/  MAX_INTERRUPT_BUFFER ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 scalar_t__ USB_DEVICE_ID_CODEMERCS_IOW56 ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  iowarrior_callback ; 
 int /*<<< orphan*/  iowarrior_class ; 
 int /*<<< orphan*/  FUNC6 (struct iowarrior*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iowarrior* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iowarrior*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct usb_host_interface*,TYPE_6__**) ; 
 int FUNC19 (struct usb_host_interface*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC20 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_interface*,struct iowarrior*) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC26(struct usb_interface *interface,
			   const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC5(interface);
	struct iowarrior *dev = NULL;
	struct usb_host_interface *iface_desc;
	int retval = -ENOMEM;
	int res;

	/* allocate memory for our device state and initialize it */
	dev = FUNC9(sizeof(struct iowarrior), GFP_KERNEL);
	if (!dev)
		return retval;

	FUNC12(&dev->mutex);

	FUNC0(&dev->intr_idx, 0);
	FUNC0(&dev->read_idx, 0);
	FUNC0(&dev->overflow_flag, 0);
	FUNC4(&dev->read_wait);
	FUNC0(&dev->write_busy, 0);
	FUNC4(&dev->write_wait);

	dev->udev = udev;
	dev->interface = FUNC20(interface);

	iface_desc = interface->cur_altsetting;
	dev->product_id = FUNC10(udev->descriptor.idProduct);

	FUNC3(&dev->submitted);

	res = FUNC18(iface_desc, &dev->int_in_endpoint);
	if (res) {
		FUNC1(&interface->dev, "no interrupt-in endpoint found\n");
		retval = res;
		goto error;
	}

	if (dev->product_id == USB_DEVICE_ID_CODEMERCS_IOW56) {
		res = FUNC19(iface_desc,
				&dev->int_out_endpoint);
		if (res) {
			FUNC1(&interface->dev, "no interrupt-out endpoint found\n");
			retval = res;
			goto error;
		}
	}

	/* we have to check the report_size often, so remember it in the endianness suitable for our machine */
	dev->report_size = FUNC16(dev->int_in_endpoint);
	if ((dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) &&
	    (dev->product_id == USB_DEVICE_ID_CODEMERCS_IOW56))
		/* IOWarrior56 has wMaxPacketSize different from report size */
		dev->report_size = 7;

	/* create the urb and buffer for reading */
	dev->int_in_urb = FUNC14(0, GFP_KERNEL);
	if (!dev->int_in_urb)
		goto error;
	dev->int_in_buffer = FUNC7(dev->report_size, GFP_KERNEL);
	if (!dev->int_in_buffer)
		goto error;
	FUNC17(dev->int_in_urb, dev->udev,
			 FUNC21(dev->udev,
					dev->int_in_endpoint->bEndpointAddress),
			 dev->int_in_buffer, dev->report_size,
			 iowarrior_callback, dev,
			 dev->int_in_endpoint->bInterval);
	/* create an internal buffer for interrupt data from the device */
	dev->read_queue =
	    FUNC8(dev->report_size + 1, MAX_INTERRUPT_BUFFER,
			  GFP_KERNEL);
	if (!dev->read_queue)
		goto error;
	/* Get the serial-number of the chip */
	FUNC11(dev->chip_serial, 0x00, sizeof(dev->chip_serial));
	FUNC25(udev, udev->descriptor.iSerialNumber, dev->chip_serial,
		   sizeof(dev->chip_serial));
	if (FUNC13(dev->chip_serial) != 8)
		FUNC11(dev->chip_serial, 0x00, sizeof(dev->chip_serial));

	/* Set the idle timeout to 0, if this is interface 0 */
	if (dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) {
	    FUNC15(udev, FUNC24(udev, 0),
			    0x0A,
			    USB_TYPE_CLASS | USB_RECIP_INTERFACE, 0,
			    0, NULL, 0, USB_CTRL_SET_TIMEOUT);
	}
	/* allow device read and ioctl */
	dev->present = 1;

	/* we can register the device now, as it is ready */
	FUNC23(interface, dev);

	retval = FUNC22(interface, &iowarrior_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC1(&interface->dev, "Not able to get a minor for this device.\n");
		goto error;
	}

	dev->minor = interface->minor;

	/* let the user know what node this device is now attached to */
	FUNC2(&interface->dev, "IOWarrior product=0x%x, serial=%s interface=%d "
		 "now attached to iowarrior%d\n", dev->product_id, dev->chip_serial,
		 iface_desc->desc.bInterfaceNumber, dev->minor - IOWARRIOR_MINOR_BASE);
	return retval;

error:
	FUNC6(dev);
	return retval;
}