#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_skel {int /*<<< orphan*/  kref; int /*<<< orphan*/  bulk_out_endpointAddr; int /*<<< orphan*/  bulk_in_urb; int /*<<< orphan*/  bulk_in_buffer; int /*<<< orphan*/  bulk_in_size; int /*<<< orphan*/  bulk_in_endpointAddr; int /*<<< orphan*/  interface; int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_in_wait; int /*<<< orphan*/  submitted; int /*<<< orphan*/  err_lock; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  limit_sem; } ;
struct usb_interface {int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; int /*<<< orphan*/  cur_altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WRITES_IN_FLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_skel* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skel_class ; 
 int /*<<< orphan*/  skel_delete ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_endpoint_descriptor*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*) ; 
 int FUNC17 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct usb_skel*) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *interface,
		      const struct usb_device_id *id)
{
	struct usb_skel *dev;
	struct usb_endpoint_descriptor *bulk_in, *bulk_out;
	int retval;

	/* allocate memory for our device state and initialize it */
	dev = FUNC8(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC6(&dev->kref);
	FUNC10(&dev->limit_sem, WRITES_IN_FLIGHT);
	FUNC9(&dev->io_mutex);
	FUNC11(&dev->err_lock);
	FUNC2(&dev->submitted);
	FUNC3(&dev->bulk_in_wait);

	dev->udev = FUNC15(FUNC4(interface));
	dev->interface = FUNC16(interface);

	/* set up the endpoint information */
	/* use only the first bulk-in and bulk-out endpoints */
	retval = FUNC14(interface->cur_altsetting,
			&bulk_in, &bulk_out, NULL, NULL);
	if (retval) {
		FUNC0(&interface->dev,
			"Could not find both bulk-in and bulk-out endpoints\n");
		goto error;
	}

	dev->bulk_in_size = FUNC13(bulk_in);
	dev->bulk_in_endpointAddr = bulk_in->bEndpointAddress;
	dev->bulk_in_buffer = FUNC5(dev->bulk_in_size, GFP_KERNEL);
	if (!dev->bulk_in_buffer) {
		retval = -ENOMEM;
		goto error;
	}
	dev->bulk_in_urb = FUNC12(0, GFP_KERNEL);
	if (!dev->bulk_in_urb) {
		retval = -ENOMEM;
		goto error;
	}

	dev->bulk_out_endpointAddr = bulk_out->bEndpointAddress;

	/* save our data pointer in this interface device */
	FUNC18(interface, dev);

	/* we can register the device now, as it is ready */
	retval = FUNC17(interface, &skel_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC0(&interface->dev,
			"Not able to get a minor for this device.\n");
		FUNC18(interface, NULL);
		goto error;
	}

	/* let the user know what node this device is now attached to */
	FUNC1(&interface->dev,
		 "USB Skeleton device now attached to USBSkel-%d",
		 interface->minor);
	return 0;

error:
	/* this frees allocated memory */
	FUNC7(&dev->kref, skel_delete);

	return retval;
}