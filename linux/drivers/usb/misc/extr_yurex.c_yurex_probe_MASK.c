#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_yurex {int bbu; int /*<<< orphan*/  kref; TYPE_2__* urb; void* int_buffer; int /*<<< orphan*/  int_in_endpointAddr; int /*<<< orphan*/  udev; TYPE_4__* cntl_urb; void* cntl_buffer; TYPE_5__* cntl_req; int /*<<< orphan*/  interface; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_mutex; } ;
struct usb_interface {int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_6__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int bRequestType; void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bRequest; } ;
struct TYPE_8__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_7__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int YUREX_BUF_SIZE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 TYPE_5__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_yurex* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,int,int /*<<< orphan*/ ,struct usb_yurex*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct usb_yurex*,int) ; 
 int FUNC16 (struct usb_host_interface*,struct usb_endpoint_descriptor**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_interface*,struct usb_yurex*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  yurex_class ; 
 int /*<<< orphan*/  yurex_control_callback ; 
 int /*<<< orphan*/  yurex_delete ; 
 int /*<<< orphan*/  yurex_interrupt ; 

__attribute__((used)) static int FUNC24(struct usb_interface *interface, const struct usb_device_id *id)
{
	struct usb_yurex *dev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int retval = -ENOMEM;
	FUNC0(wait);
	int res;

	/* allocate memory for our device state and initialize it */
	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		goto error;
	FUNC7(&dev->kref);
	FUNC10(&dev->io_mutex);
	FUNC11(&dev->lock);
	FUNC4(&dev->waitq);

	dev->udev = FUNC17(FUNC5(interface));
	dev->interface = FUNC18(interface);

	/* set up the endpoint information */
	iface_desc = interface->cur_altsetting;
	res = FUNC16(iface_desc, &endpoint);
	if (res) {
		FUNC2(&interface->dev, "Could not find endpoints\n");
		retval = res;
		goto error;
	}

	dev->int_in_endpointAddr = endpoint->bEndpointAddress;

	/* allocate control URB */
	dev->cntl_urb = FUNC13(0, GFP_KERNEL);
	if (!dev->cntl_urb)
		goto error;

	/* allocate buffer for control req */
	dev->cntl_req = FUNC6(YUREX_BUF_SIZE, GFP_KERNEL);
	if (!dev->cntl_req)
		goto error;

	/* allocate buffer for control msg */
	dev->cntl_buffer = FUNC12(dev->udev, YUREX_BUF_SIZE,
					      GFP_KERNEL,
					      &dev->cntl_urb->transfer_dma);
	if (!dev->cntl_buffer) {
		FUNC2(&interface->dev, "Could not allocate cntl_buffer\n");
		goto error;
	}

	/* configure control URB */
	dev->cntl_req->bRequestType = USB_DIR_OUT | USB_TYPE_CLASS |
				      USB_RECIP_INTERFACE;
	dev->cntl_req->bRequest	= HID_REQ_SET_REPORT;
	dev->cntl_req->wValue	= FUNC1((HID_OUTPUT_REPORT + 1) << 8);
	dev->cntl_req->wIndex	= FUNC1(iface_desc->desc.bInterfaceNumber);
	dev->cntl_req->wLength	= FUNC1(YUREX_BUF_SIZE);

	FUNC14(dev->cntl_urb, dev->udev,
			     FUNC22(dev->udev, 0),
			     (void *)dev->cntl_req, dev->cntl_buffer,
			     YUREX_BUF_SIZE, yurex_control_callback, dev);
	dev->cntl_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;


	/* allocate interrupt URB */
	dev->urb = FUNC13(0, GFP_KERNEL);
	if (!dev->urb)
		goto error;

	/* allocate buffer for interrupt in */
	dev->int_buffer = FUNC12(dev->udev, YUREX_BUF_SIZE,
					GFP_KERNEL, &dev->urb->transfer_dma);
	if (!dev->int_buffer) {
		FUNC2(&interface->dev, "Could not allocate int_buffer\n");
		goto error;
	}

	/* configure interrupt URB */
	FUNC15(dev->urb, dev->udev,
			 FUNC19(dev->udev, dev->int_in_endpointAddr),
			 dev->int_buffer, YUREX_BUF_SIZE, yurex_interrupt,
			 dev, 1);
	dev->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	if (FUNC23(dev->urb, GFP_KERNEL)) {
		retval = -EIO;
		FUNC2(&interface->dev, "Could not submitting URB\n");
		goto error;
	}

	/* save our data pointer in this interface device */
	FUNC21(interface, dev);
	dev->bbu = -1;

	/* we can register the device now, as it is ready */
	retval = FUNC20(interface, &yurex_class);
	if (retval) {
		FUNC2(&interface->dev,
			"Not able to get a minor for this device.\n");
		FUNC21(interface, NULL);
		goto error;
	}

	FUNC3(&interface->dev,
		 "USB YUREX device now attached to Yurex #%d\n",
		 interface->minor);

	return 0;

error:
	if (dev)
		/* this frees allocated memory */
		FUNC8(&dev->kref, yurex_delete);
	return retval;
}