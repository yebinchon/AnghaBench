#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usblp {int present; size_t current_protocol; int /*<<< orphan*/  intf; struct usblp* device_id_string; struct usblp* statusbuf; struct usblp* readbuf; struct usb_device* dev; TYPE_3__* protocol; int /*<<< orphan*/  ifnum; scalar_t__ bidir; int /*<<< orphan*/  minor; int /*<<< orphan*/  quirks; int /*<<< orphan*/  urbs; int /*<<< orphan*/  wwait; int /*<<< orphan*/  rwait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mut; int /*<<< orphan*/  wmut; } ;
struct usb_interface {int /*<<< orphan*/  dev; int /*<<< orphan*/  minor; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_4__ descriptor; int /*<<< orphan*/  devnum; } ;
struct TYPE_7__ {int /*<<< orphan*/  alt_setting; } ;
struct TYPE_5__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STATUS_BUF_SIZE ; 
 int /*<<< orphan*/  USBLP_BUF_SIZE_IN ; 
 int /*<<< orphan*/  USBLP_DEVICE_ID_SIZE ; 
 int /*<<< orphan*/  USBLP_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usblp*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usblp* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*,struct usblp*) ; 
 int /*<<< orphan*/  FUNC16 (struct usblp*) ; 
 int /*<<< orphan*/  FUNC17 (struct usblp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usblp_class ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct usblp*) ; 
 scalar_t__ FUNC20 (struct usblp*,int) ; 

__attribute__((used)) static int FUNC21(struct usb_interface *intf,
		       const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC5(intf);
	struct usblp *usblp;
	int protocol;
	int retval;

	/* Malloc and start initializing usblp structure so we can use it
	 * directly. */
	usblp = FUNC8(sizeof(struct usblp), GFP_KERNEL);
	if (!usblp) {
		retval = -ENOMEM;
		goto abort_ret;
	}
	usblp->dev = dev;
	FUNC10(&usblp->wmut);
	FUNC10(&usblp->mut);
	FUNC11(&usblp->lock);
	FUNC4(&usblp->rwait);
	FUNC4(&usblp->wwait);
	FUNC3(&usblp->urbs);
	usblp->ifnum = intf->cur_altsetting->desc.bInterfaceNumber;
	usblp->intf = FUNC12(intf);

	/* Malloc device ID string buffer to the largest expected length,
	 * since we can re-query it on an ioctl and a dynamic string
	 * could change in length. */
	if (!(usblp->device_id_string = FUNC7(USBLP_DEVICE_ID_SIZE, GFP_KERNEL))) {
		retval = -ENOMEM;
		goto abort;
	}

	/*
	 * Allocate read buffer. We somewhat wastefully
	 * malloc both regardless of bidirectionality, because the
	 * alternate setting can be changed later via an ioctl.
	 */
	if (!(usblp->readbuf = FUNC7(USBLP_BUF_SIZE_IN, GFP_KERNEL))) {
		retval = -ENOMEM;
		goto abort;
	}

	/* Allocate buffer for printer status */
	usblp->statusbuf = FUNC7(STATUS_BUF_SIZE, GFP_KERNEL);
	if (!usblp->statusbuf) {
		retval = -ENOMEM;
		goto abort;
	}

	/* Lookup quirks for this printer. */
	usblp->quirks = FUNC18(
		FUNC9(dev->descriptor.idVendor),
		FUNC9(dev->descriptor.idProduct));

	/* Analyze and pick initial alternate settings and endpoints. */
	protocol = FUNC19(usblp);
	if (protocol < 0) {
		FUNC0(&intf->dev,
			"incompatible printer-class device 0x%4.4X/0x%4.4X\n",
			FUNC9(dev->descriptor.idVendor),
			FUNC9(dev->descriptor.idProduct));
		retval = -ENODEV;
		goto abort;
	}

	/* Setup the selected alternate setting and endpoints. */
	if (FUNC20(usblp, protocol) < 0) {
		retval = -ENODEV;	/* ->probe isn't ->ioctl */
		goto abort;
	}

	/* Retrieve and store the device ID string. */
	FUNC16(usblp);

#ifdef DEBUG
	usblp_check_status(usblp, 0);
#endif

	FUNC15(intf, usblp);

	usblp->present = 1;

	retval = FUNC14(intf, &usblp_class);
	if (retval) {
		FUNC1(&intf->dev,
			"usblp: Not able to get a minor (base %u, slice default): %d\n",
			USBLP_MINOR_BASE, retval);
		goto abort_intfdata;
	}
	usblp->minor = intf->minor;
	FUNC2(&intf->dev,
		"usblp%d: USB %sdirectional printer dev %d if %d alt %d proto %d vid 0x%4.4X pid 0x%4.4X\n",
		usblp->minor, usblp->bidir ? "Bi" : "Uni", dev->devnum,
		usblp->ifnum,
		usblp->protocol[usblp->current_protocol].alt_setting,
		usblp->current_protocol,
		FUNC9(usblp->dev->descriptor.idVendor),
		FUNC9(usblp->dev->descriptor.idProduct));

	return 0;

abort_intfdata:
	FUNC15(intf, NULL);
abort:
	FUNC6(usblp->readbuf);
	FUNC6(usblp->statusbuf);
	FUNC6(usblp->device_id_string);
	FUNC13(usblp->intf);
	FUNC6(usblp);
abort_ret:
	return retval;
}