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
struct usb_gadget {int dummy; } ;
struct gr_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gr_udc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct gr_udc* FUNC3 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *gadget)
{
	struct gr_udc *dev = FUNC3(gadget);
	unsigned long flags;

	FUNC1(&dev->lock, flags);

	dev->driver = NULL;
	FUNC0(dev);

	FUNC2(&dev->lock, flags);

	return 0;
}