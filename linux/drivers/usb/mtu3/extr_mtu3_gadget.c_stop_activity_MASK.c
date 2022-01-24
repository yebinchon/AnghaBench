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
struct usb_gadget_driver {int /*<<< orphan*/  (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct mtu3 {int num_eps; int /*<<< orphan*/  lock; TYPE_1__ g; scalar_t__ out_eps; scalar_t__ in_eps; scalar_t__ ep0; scalar_t__ softconnect; struct usb_gadget_driver* gadget_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct mtu3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct mtu3 *mtu)
{
	struct usb_gadget_driver *driver = mtu->gadget_driver;
	int i;

	/* don't disconnect if it's not connected */
	if (mtu->g.speed == USB_SPEED_UNKNOWN)
		driver = NULL;
	else
		mtu->g.speed = USB_SPEED_UNKNOWN;

	/* deactivate the hardware */
	if (mtu->softconnect) {
		mtu->softconnect = 0;
		FUNC0(mtu, 0);
	}

	/*
	 * killing any outstanding requests will quiesce the driver;
	 * then report disconnect
	 */
	FUNC1(mtu->ep0, -ESHUTDOWN);
	for (i = 1; i < mtu->num_eps; i++) {
		FUNC1(mtu->in_eps + i, -ESHUTDOWN);
		FUNC1(mtu->out_eps + i, -ESHUTDOWN);
	}

	if (driver) {
		FUNC3(&mtu->lock);
		driver->disconnect(&mtu->g);
		FUNC2(&mtu->lock);
	}
}