#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_gadget_driver {int /*<<< orphan*/  max_speed; } ;
struct usb_gadget {int speed; } ;
struct dummy_hcd {struct dummy* dum; } ;
struct dummy {int ints_enabled; int /*<<< orphan*/  lock; struct usb_gadget_driver* driver; scalar_t__ devstatus; } ;

/* Variables and functions */
 int EINVAL ; 
#define  USB_SPEED_FULL 131 
#define  USB_SPEED_HIGH 130 
#define  USB_SPEED_LOW 129 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy_hcd*) ; 
 struct dummy_hcd* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *g,
		struct usb_gadget_driver *driver)
{
	struct dummy_hcd	*dum_hcd = FUNC2(g);
	struct dummy		*dum = dum_hcd->dum;

	switch (g->speed) {
	/* All the speeds we support */
	case USB_SPEED_LOW:
	case USB_SPEED_FULL:
	case USB_SPEED_HIGH:
	case USB_SPEED_SUPER:
		break;
	default:
		FUNC0(FUNC1(dum_hcd), "Unsupported driver max speed %d\n",
				driver->max_speed);
		return -EINVAL;
	}

	/*
	 * SLAVE side init ... the layer above hardware, which
	 * can't enumerate without help from the driver we're binding.
	 */

	FUNC3(&dum->lock);
	dum->devstatus = 0;
	dum->driver = driver;
	dum->ints_enabled = 1;
	FUNC4(&dum->lock);

	return 0;
}