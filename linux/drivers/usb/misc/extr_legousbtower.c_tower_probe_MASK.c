#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct usb_interface {struct device dev; scalar_t__ minor; int /*<<< orphan*/  cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct tower_get_version_reply {int /*<<< orphan*/  build_no; int /*<<< orphan*/  minor; scalar_t__ major; } ;
struct lego_usb_tower {scalar_t__ minor; TYPE_2__* interrupt_out_endpoint; scalar_t__ interrupt_out_interval; TYPE_1__* interrupt_in_endpoint; scalar_t__ interrupt_in_interval; int /*<<< orphan*/ * interrupt_out_urb; int /*<<< orphan*/ * interrupt_out_buffer; int /*<<< orphan*/ * interrupt_in_urb; int /*<<< orphan*/ * interrupt_in_buffer; int /*<<< orphan*/ * read_buffer; scalar_t__ interrupt_out_busy; scalar_t__ interrupt_in_done; scalar_t__ interrupt_in_running; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  read_last_arrival; int /*<<< orphan*/  packet_timeout_jiffies; int /*<<< orphan*/  read_buffer_lock; scalar_t__ read_packet_length; scalar_t__ read_buffer_length; scalar_t__ disconnected; scalar_t__ open_count; int /*<<< orphan*/  udev; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {scalar_t__ bInterval; } ;
struct TYPE_4__ {scalar_t__ bInterval; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LEGO_USB_TOWER_MINOR_BASE ; 
 int /*<<< orphan*/  LEGO_USB_TOWER_REQUEST_GET_VERSION ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_MAJOR ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 scalar_t__ interrupt_in_interval ; 
 scalar_t__ interrupt_out_interval ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct tower_get_version_reply*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  packet_timeout ; 
 int read_buffer_size ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tower_class ; 
 int /*<<< orphan*/  FUNC10 (struct lego_usb_tower*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tower_get_version_reply*,int,int) ; 
 int FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct lego_usb_tower*) ; 
 int write_buffer_size ; 

__attribute__((used)) static int FUNC19 (struct usb_interface *interface, const struct usb_device_id *id)
{
	struct device *idev = &interface->dev;
	struct usb_device *udev = FUNC3(interface);
	struct lego_usb_tower *dev = NULL;
	struct tower_get_version_reply *get_version_reply = NULL;
	int retval = -ENOMEM;
	int result;

	/* allocate memory for our device state and initialize it */

	dev = FUNC5 (sizeof(struct lego_usb_tower), GFP_KERNEL);

	if (!dev)
		goto exit;

	FUNC8(&dev->lock);

	dev->udev = FUNC15(udev);
	dev->open_count = 0;
	dev->disconnected = 0;

	dev->read_buffer = NULL;
	dev->read_buffer_length = 0;
	dev->read_packet_length = 0;
	FUNC9 (&dev->read_buffer_lock);
	dev->packet_timeout_jiffies = FUNC7(packet_timeout);
	dev->read_last_arrival = jiffies;

	FUNC2 (&dev->read_wait);
	FUNC2 (&dev->write_wait);

	dev->interrupt_in_buffer = NULL;
	dev->interrupt_in_endpoint = NULL;
	dev->interrupt_in_urb = NULL;
	dev->interrupt_in_running = 0;
	dev->interrupt_in_done = 0;

	dev->interrupt_out_buffer = NULL;
	dev->interrupt_out_endpoint = NULL;
	dev->interrupt_out_urb = NULL;
	dev->interrupt_out_busy = 0;

	result = FUNC14(interface->cur_altsetting,
			NULL, NULL,
			&dev->interrupt_in_endpoint,
			&dev->interrupt_out_endpoint);
	if (result) {
		FUNC0(idev, "interrupt endpoints not found\n");
		retval = result;
		goto error;
	}

	dev->read_buffer = FUNC5 (read_buffer_size, GFP_KERNEL);
	if (!dev->read_buffer)
		goto error;
	dev->interrupt_in_buffer = FUNC5 (FUNC13(dev->interrupt_in_endpoint), GFP_KERNEL);
	if (!dev->interrupt_in_buffer)
		goto error;
	dev->interrupt_in_urb = FUNC11(0, GFP_KERNEL);
	if (!dev->interrupt_in_urb)
		goto error;
	dev->interrupt_out_buffer = FUNC5 (write_buffer_size, GFP_KERNEL);
	if (!dev->interrupt_out_buffer)
		goto error;
	dev->interrupt_out_urb = FUNC11(0, GFP_KERNEL);
	if (!dev->interrupt_out_urb)
		goto error;
	dev->interrupt_in_interval = interrupt_in_interval ? interrupt_in_interval : dev->interrupt_in_endpoint->bInterval;
	dev->interrupt_out_interval = interrupt_out_interval ? interrupt_out_interval : dev->interrupt_out_endpoint->bInterval;

	get_version_reply = FUNC5(sizeof(*get_version_reply), GFP_KERNEL);

	if (!get_version_reply) {
		retval = -ENOMEM;
		goto error;
	}

	/* get the firmware version and log it */
	result = FUNC12 (udev,
				  FUNC16(udev, 0),
				  LEGO_USB_TOWER_REQUEST_GET_VERSION,
				  USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
				  0,
				  0,
				  get_version_reply,
				  sizeof(*get_version_reply),
				  1000);
	if (result != sizeof(*get_version_reply)) {
		if (result >= 0)
			result = -EIO;
		FUNC0(idev, "get version request failed: %d\n", result);
		retval = result;
		goto error;
	}
	FUNC1(&interface->dev,
		 "LEGO USB Tower firmware version is %d.%d build %d\n",
		 get_version_reply->major,
		 get_version_reply->minor,
		 FUNC6(get_version_reply->build_no));

	/* we can register the device now, as it is ready */
	FUNC18 (interface, dev);

	retval = FUNC17 (interface, &tower_class);

	if (retval) {
		/* something prevented us from registering this driver */
		FUNC0(idev, "Not able to get a minor for this device.\n");
		goto error;
	}
	dev->minor = interface->minor;

	/* let the user know what node this device is now attached to */
	FUNC1(&interface->dev, "LEGO USB Tower #%d now attached to major "
		 "%d minor %d\n", (dev->minor - LEGO_USB_TOWER_MINOR_BASE),
		 USB_MAJOR, dev->minor);

exit:
	FUNC4(get_version_reply);
	return retval;

error:
	FUNC4(get_version_reply);
	FUNC10(dev);
	return retval;
}