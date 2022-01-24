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
struct net2280 {int n_ep; int /*<<< orphan*/  lock; TYPE_1__ gadget; int /*<<< orphan*/ * ep; } ;

/* Variables and functions */
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net2280*) ; 
 int /*<<< orphan*/  FUNC5 (struct net2280*) ; 

__attribute__((used)) static void FUNC6(struct net2280 *dev, struct usb_gadget_driver *driver)
{
	int			i;

	/* don't disconnect if it's not connected */
	if (dev->gadget.speed == USB_SPEED_UNKNOWN)
		driver = NULL;

	/* stop hardware; prevent new request submissions;
	 * and kill any outstanding requests.
	 */
	FUNC5(dev);
	for (i = 0; i < dev->n_ep; i++)
		FUNC0(&dev->ep[i]);

	/* report disconnect; the driver is already quiesced */
	if (driver) {
		FUNC2(&dev->lock);
		driver->disconnect(&dev->gadget);
		FUNC1(&dev->lock);
	}

	FUNC4(dev);
}