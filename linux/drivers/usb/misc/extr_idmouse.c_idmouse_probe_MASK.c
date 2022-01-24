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
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* altsetting; } ;
struct usb_idmouse {int bulk_in_size; int present; int /*<<< orphan*/  bulk_in_buffer; int /*<<< orphan*/  bulk_in_endpointAddr; int /*<<< orphan*/  orig_bi_size; struct usb_interface* interface; struct usb_device* udev; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int bInterfaceClass; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_DESC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idmouse_class ; 
 int /*<<< orphan*/  FUNC2 (struct usb_idmouse*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct usb_idmouse* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_endpoint_descriptor*) ; 
 int FUNC8 (struct usb_host_interface*,struct usb_endpoint_descriptor**) ; 
 int FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct usb_idmouse*) ; 

__attribute__((used)) static int FUNC11(struct usb_interface *interface,
				const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC3(interface);
	struct usb_idmouse *dev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int result;

	/* check if we have gotten the data or the hid interface */
	iface_desc = &interface->altsetting[0];
	if (iface_desc->desc.bInterfaceClass != 0x0A)
		return -ENODEV;

	if (iface_desc->desc.bNumEndpoints < 1)
		return -ENODEV;

	/* allocate memory for our device state and initialize it */
	dev = FUNC5(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL)
		return -ENOMEM;

	FUNC6(&dev->lock);
	dev->udev = udev;
	dev->interface = interface;

	/* set up the endpoint information - use only the first bulk-in endpoint */
	result = FUNC8(iface_desc, &endpoint);
	if (result) {
		FUNC0(&interface->dev, "Unable to find bulk-in endpoint.\n");
		FUNC2(dev);
		return result;
	}

	dev->orig_bi_size = FUNC7(endpoint);
	dev->bulk_in_size = 0x200; /* works _much_ faster */
	dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
	dev->bulk_in_buffer = FUNC4(IMGSIZE + dev->bulk_in_size, GFP_KERNEL);
	if (!dev->bulk_in_buffer) {
		FUNC2(dev);
		return -ENOMEM;
	}

	/* allow device read, write and ioctl */
	dev->present = 1;

	/* we can register the device now, as it is ready */
	FUNC10(interface, dev);
	result = FUNC9(interface, &idmouse_class);
	if (result) {
		/* something prevented us from registering this device */
		FUNC0(&interface->dev, "Unable to allocate minor number.\n");
		FUNC10(interface, NULL);
		FUNC2(dev);
		return result;
	}

	/* be noisy */
	FUNC1(&interface->dev,"%s now attached\n",DRIVER_DESC);

	return 0;
}