#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct tower_reset_reply {int dummy; } ;
struct lego_usb_tower {int open_count; int interrupt_in_running; int /*<<< orphan*/  lock; TYPE_1__* udev; int /*<<< orphan*/  interrupt_in_urb; scalar_t__ interrupt_in_done; int /*<<< orphan*/  interrupt_in_interval; TYPE_4__* interrupt_in_endpoint; int /*<<< orphan*/  interrupt_in_buffer; scalar_t__ read_packet_length; scalar_t__ read_buffer_length; } ;
struct inode {int dummy; } ;
struct file {struct lego_usb_tower* private_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LEGO_USB_TOWER_REQUEST_RESET ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct tower_reset_reply*) ; 
 struct tower_reset_reply* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  tower_driver ; 
 int /*<<< orphan*/  tower_interrupt_in_callback ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tower_reset_reply*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lego_usb_tower*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC12 (int /*<<< orphan*/ *,int) ; 
 struct lego_usb_tower* FUNC13 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17 (struct inode *inode, struct file *file)
{
	struct lego_usb_tower *dev = NULL;
	int subminor;
	int retval = 0;
	struct usb_interface *interface;
	struct tower_reset_reply *reset_reply;
	int result;

	reset_reply = FUNC3(sizeof(*reset_reply), GFP_KERNEL);

	if (!reset_reply) {
		retval = -ENOMEM;
		goto exit;
	}

	FUNC7(inode, file);
	subminor = FUNC1(inode);

	interface = FUNC12 (&tower_driver, subminor);

	if (!interface) {
		FUNC8("error, can't find device for minor %d\n", subminor);
		retval = -ENODEV;
		goto exit;
	}

	dev = FUNC13(interface);
	if (!dev) {
		retval = -ENODEV;
		goto exit;
	}

	/* lock this device */
	if (FUNC5(&dev->lock)) {
	        retval = -ERESTARTSYS;
		goto exit;
	}


	/* allow opening only once */
	if (dev->open_count) {
		retval = -EBUSY;
		goto unlock_exit;
	}

	/* reset the tower */
	result = FUNC9 (dev->udev,
				  FUNC14(dev->udev, 0),
				  LEGO_USB_TOWER_REQUEST_RESET,
				  USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
				  0,
				  0,
				  reset_reply,
				  sizeof(*reset_reply),
				  1000);
	if (result < 0) {
		FUNC0(&dev->udev->dev,
			"LEGO USB Tower reset control request failed\n");
		retval = result;
		goto unlock_exit;
	}

	/* initialize in direction */
	dev->read_buffer_length = 0;
	dev->read_packet_length = 0;
	FUNC11 (dev->interrupt_in_urb,
			  dev->udev,
			  FUNC15(dev->udev, dev->interrupt_in_endpoint->bEndpointAddress),
			  dev->interrupt_in_buffer,
			  FUNC10(dev->interrupt_in_endpoint),
			  tower_interrupt_in_callback,
			  dev,
			  dev->interrupt_in_interval);

	dev->interrupt_in_running = 1;
	dev->interrupt_in_done = 0;
	FUNC4();

	retval = FUNC16 (dev->interrupt_in_urb, GFP_KERNEL);
	if (retval) {
		FUNC0(&dev->udev->dev,
			"Couldn't submit interrupt_in_urb %d\n", retval);
		dev->interrupt_in_running = 0;
		goto unlock_exit;
	}

	/* save device in the file's private structure */
	file->private_data = dev;

	dev->open_count = 1;

unlock_exit:
	FUNC6(&dev->lock);

exit:
	FUNC2(reset_reply);
	return retval;
}