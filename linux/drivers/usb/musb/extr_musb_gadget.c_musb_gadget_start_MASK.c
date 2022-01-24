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
struct usb_otg {int /*<<< orphan*/  state; } ;
struct usb_gadget_driver {scalar_t__ max_speed; } ;
struct usb_gadget {int dummy; } ;
struct musb {int is_active; int /*<<< orphan*/  controller; TYPE_1__* xceiv; int /*<<< orphan*/  lock; int /*<<< orphan*/  g; struct usb_gadget_driver* gadget_driver; scalar_t__ softconnect; } ;
struct TYPE_2__ {scalar_t__ last_event; struct usb_otg* otg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OTG_STATE_B_IDLE ; 
 scalar_t__ USB_EVENT_ID ; 
 scalar_t__ USB_SPEED_HIGH ; 
 struct musb* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_otg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct usb_gadget *g,
		struct usb_gadget_driver *driver)
{
	struct musb		*musb = FUNC0(g);
	struct usb_otg		*otg = musb->xceiv->otg;
	unsigned long		flags;
	int			retval = 0;

	if (driver->max_speed < USB_SPEED_HIGH) {
		retval = -EINVAL;
		goto err;
	}

	FUNC4(musb->controller);

	musb->softconnect = 0;
	musb->gadget_driver = driver;

	FUNC7(&musb->lock, flags);
	musb->is_active = 1;

	FUNC3(otg, &musb->g);
	musb->xceiv->otg->state = OTG_STATE_B_IDLE;
	FUNC8(&musb->lock, flags);

	FUNC2(musb);

	/* REVISIT:  funcall to other code, which also
	 * handles power budgeting ... this way also
	 * ensures HdrcStart is indirectly called.
	 */
	if (musb->xceiv->last_event == USB_EVENT_ID)
		FUNC1(musb, 1);

	FUNC5(musb->controller);
	FUNC6(musb->controller);

	return 0;

err:
	return retval;
}