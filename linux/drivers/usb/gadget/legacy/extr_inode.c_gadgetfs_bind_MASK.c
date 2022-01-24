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
struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int /*<<< orphan*/  name; TYPE_2__* ep0; } ;
struct dev_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_1__* req; struct usb_gadget* gadget; } ;
struct TYPE_4__ {struct dev_data* driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  complete; int /*<<< orphan*/ * context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dev_data*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_DEV_UNCONNECTED ; 
 scalar_t__ FUNC1 (struct dev_data*) ; 
 int /*<<< orphan*/  epio_complete ; 
 int /*<<< orphan*/  FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_gadget*,struct dev_data*) ; 
 int /*<<< orphan*/  shortname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dev_data* the_device ; 
 TYPE_1__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_gadget *gadget,
		struct usb_gadget_driver *driver)
{
	struct dev_data		*dev = the_device;

	if (!dev)
		return -ESRCH;
	if (0 != FUNC8 (CHIP, gadget->name)) {
		FUNC4("%s expected %s controller not %s\n",
			shortname, CHIP, gadget->name);
		return -ENODEV;
	}

	FUNC5 (gadget, dev);
	dev->gadget = gadget;
	gadget->ep0->driver_data = dev;

	/* preallocate control response and buffer */
	dev->req = FUNC9 (gadget->ep0, GFP_KERNEL);
	if (!dev->req)
		goto enomem;
	dev->req->context = NULL;
	dev->req->complete = epio_complete;

	if (FUNC1 (dev) < 0)
		goto enomem;

	FUNC0 (dev, "bound to %s driver\n", gadget->name);
	FUNC6(&dev->lock);
	dev->state = STATE_DEV_UNCONNECTED;
	FUNC7(&dev->lock);
	FUNC3 (dev);
	return 0;

enomem:
	FUNC2 (gadget);
	return -ENOMEM;
}