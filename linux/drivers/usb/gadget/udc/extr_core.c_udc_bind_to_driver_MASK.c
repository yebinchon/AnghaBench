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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * driver; int /*<<< orphan*/  kobj; } ;
struct usb_udc {TYPE_2__* gadget; TYPE_4__ dev; struct usb_gadget_driver* driver; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_2__*,struct usb_gadget_driver*) ;int /*<<< orphan*/  function; int /*<<< orphan*/  (* unbind ) (TYPE_2__*) ;int /*<<< orphan*/  max_speed; int /*<<< orphan*/  driver; } ;
struct TYPE_6__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EISNAM ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,struct usb_gadget_driver*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_udc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usb_udc*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_udc*) ; 

__attribute__((used)) static int FUNC8(struct usb_udc *udc, struct usb_gadget_driver *driver)
{
	int ret;

	FUNC0(&udc->dev, "registering UDC driver [%s]\n",
			driver->function);

	udc->driver = driver;
	udc->dev.driver = &driver->driver;
	udc->gadget->dev.driver = &driver->driver;

	FUNC5(udc, driver->max_speed);

	ret = driver->bind(udc->gadget, driver);
	if (ret)
		goto err1;
	ret = FUNC6(udc);
	if (ret) {
		driver->unbind(udc->gadget);
		goto err1;
	}
	FUNC7(udc);

	FUNC2(&udc->dev.kobj, KOBJ_CHANGE);
	return 0;
err1:
	if (ret != -EISNAM)
		FUNC1(&udc->dev, "failed to start %s: %d\n",
			udc->driver->function, ret);
	udc->driver = NULL;
	udc->dev.driver = NULL;
	udc->gadget->dev.driver = NULL;
	return ret;
}