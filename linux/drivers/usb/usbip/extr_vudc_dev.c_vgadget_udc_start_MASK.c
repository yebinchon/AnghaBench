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
struct vudc {int /*<<< orphan*/  lock; scalar_t__ desc_cached; scalar_t__ connected; scalar_t__ pullup; struct usb_gadget_driver* driver; } ;
struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vudc* FUNC2 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *g,
		struct usb_gadget_driver *driver)
{
	struct vudc *udc = FUNC2(g);
	unsigned long flags;

	FUNC0(&udc->lock, flags);
	udc->driver = driver;
	udc->pullup = udc->connected = udc->desc_cached = 0;
	FUNC1(&udc->lock, flags);

	return 0;
}