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
struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int /*<<< orphan*/  ep0; } ;
struct usb_composite_driver {int (* bind ) (struct usb_composite_dev*) ;int /*<<< orphan*/  name; scalar_t__ needs_serial; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  iSerialNumber; } ;
struct usb_composite_dev {TYPE_1__ desc; scalar_t__ use_os_string; int /*<<< orphan*/  gstrings; int /*<<< orphan*/  configs; struct usb_gadget* gadget; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_composite_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_gadget*,int) ; 
 int FUNC4 (struct usb_composite_driver*,struct usb_composite_dev*) ; 
 int FUNC5 (struct usb_composite_dev*,int /*<<< orphan*/ ) ; 
 struct usb_composite_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_gadget*,struct usb_composite_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct usb_composite_dev*) ; 
 struct usb_composite_driver* FUNC10 (struct usb_gadget_driver*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_gadget *gadget,
		struct usb_gadget_driver *gdriver)
{
	struct usb_composite_dev	*cdev;
	struct usb_composite_driver	*composite = FUNC10(gdriver);
	int				status = -ENOMEM;

	cdev = FUNC6(sizeof *cdev, GFP_KERNEL);
	if (!cdev)
		return status;

	FUNC8(&cdev->lock);
	cdev->gadget = gadget;
	FUNC7(gadget, cdev);
	FUNC1(&cdev->configs);
	FUNC1(&cdev->gstrings);

	status = FUNC4(composite, cdev);
	if (status)
		goto fail;

	/* composite gadget needs to assign strings for whole device (like
	 * serial number), register function drivers, potentially update
	 * power state and consumption, etc
	 */
	status = composite->bind(cdev);
	if (status < 0)
		goto fail;

	if (cdev->use_os_string) {
		status = FUNC5(cdev, gadget->ep0);
		if (status)
			goto fail;
	}

	FUNC11(&cdev->desc, composite->dev);

	/* has userspace failed to provide a serial number? */
	if (composite->needs_serial && !cdev->desc.iSerialNumber)
		FUNC2(cdev, "userspace failed to provide iSerialNumber\n");

	FUNC0(cdev, "%s ready\n", composite->name);
	return 0;

fail:
	FUNC3(gadget, false);
	return status;
}