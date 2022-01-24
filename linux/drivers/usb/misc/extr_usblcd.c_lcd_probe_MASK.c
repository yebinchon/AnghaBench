#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_lcd {int /*<<< orphan*/  kref; TYPE_2__* udev; int /*<<< orphan*/  bulk_out_endpointAddr; int /*<<< orphan*/  bulk_in_buffer; int /*<<< orphan*/  bulk_in_size; int /*<<< orphan*/  bulk_in_endpointAddr; struct usb_interface* interface; int /*<<< orphan*/  submitted; int /*<<< orphan*/  io_rwsem; int /*<<< orphan*/  limit_sem; } ;
struct usb_interface {int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; int /*<<< orphan*/  cur_altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; } ;
struct TYPE_4__ {int /*<<< orphan*/  devnum; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_LCD_CONCURRENT_WRITES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_lcd* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcd_class ; 
 int /*<<< orphan*/  lcd_delete ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_endpoint_descriptor*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct usb_lcd*) ; 

__attribute__((used)) static int FUNC17(struct usb_interface *interface,
		     const struct usb_device_id *id)
{
	struct usb_lcd *dev = NULL;
	struct usb_endpoint_descriptor *bulk_in, *bulk_out;
	int i;
	int retval;

	/* allocate memory for our device state and initialize it */
	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC7(&dev->kref);
	FUNC11(&dev->limit_sem, USB_LCD_CONCURRENT_WRITES);
	FUNC3(&dev->io_rwsem);
	FUNC4(&dev->submitted);

	dev->udev = FUNC14(FUNC5(interface));
	dev->interface = interface;

	if (FUNC10(dev->udev->descriptor.idProduct) != 0x0001) {
		FUNC2(&interface->dev, "USBLCD model not supported.\n");
		retval = -ENODEV;
		goto error;
	}

	/* set up the endpoint information */
	/* use only the first bulk-in and bulk-out endpoints */
	retval = FUNC13(interface->cur_altsetting,
			&bulk_in, &bulk_out, NULL, NULL);
	if (retval) {
		FUNC0(&interface->dev,
			"Could not find both bulk-in and bulk-out endpoints\n");
		goto error;
	}

	dev->bulk_in_size = FUNC12(bulk_in);
	dev->bulk_in_endpointAddr = bulk_in->bEndpointAddress;
	dev->bulk_in_buffer = FUNC6(dev->bulk_in_size, GFP_KERNEL);
	if (!dev->bulk_in_buffer) {
		retval = -ENOMEM;
		goto error;
	}

	dev->bulk_out_endpointAddr = bulk_out->bEndpointAddress;

	/* save our data pointer in this interface device */
	FUNC16(interface, dev);

	/* we can register the device now, as it is ready */
	retval = FUNC15(interface, &lcd_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC0(&interface->dev,
			"Not able to get a minor for this device.\n");
		goto error;
	}

	i = FUNC10(dev->udev->descriptor.bcdDevice);

	FUNC1(&interface->dev, "USBLCD Version %1d%1d.%1d%1d found "
		 "at address %d\n", (i & 0xF000)>>12, (i & 0xF00)>>8,
		 (i & 0xF0)>>4, (i & 0xF), dev->udev->devnum);

	/* let the user know what node this device is now attached to */
	FUNC1(&interface->dev, "USB LCD device now attached to USBLCD-%d\n",
		 interface->minor);
	return 0;

error:
	FUNC8(&dev->kref, lcd_delete);
	return retval;
}