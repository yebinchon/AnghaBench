#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {int /*<<< orphan*/  function; TYPE_2__ driver; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct mtu3 {int /*<<< orphan*/  lock; TYPE_3__* ssusb; struct usb_gadget_driver* gadget_driver; scalar_t__ softconnect; int /*<<< orphan*/  dev; TYPE_1__ g; } ;
struct TYPE_6__ {scalar_t__ dr_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtu3* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct usb_gadget *gadget,
		struct usb_gadget_driver *driver)
{
	struct mtu3 *mtu = FUNC2(gadget);
	unsigned long flags;

	if (mtu->gadget_driver) {
		FUNC1(mtu->dev, "%s is already bound to %s\n",
			mtu->g.name, mtu->gadget_driver->driver.name);
		return -EBUSY;
	}

	FUNC0(mtu->dev, "bind driver %s\n", driver->function);

	FUNC4(&mtu->lock, flags);

	mtu->softconnect = 0;
	mtu->gadget_driver = driver;

	if (mtu->ssusb->dr_mode == USB_DR_MODE_PERIPHERAL)
		FUNC3(mtu);

	FUNC5(&mtu->lock, flags);

	return 0;
}