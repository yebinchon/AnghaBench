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
struct usb_gadget {int dummy; } ;
struct TYPE_3__ {int is_selfpowered; } ;
struct ast_vhub_dev {TYPE_2__* vhub; TYPE_1__ gadget; struct usb_gadget_driver* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_dev* FUNC3 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *gadget,
			      struct usb_gadget_driver *driver)
{
	struct ast_vhub_dev *d = FUNC3(gadget);
	unsigned long flags;

	FUNC1(&d->vhub->lock, flags);

	FUNC0(d, "start\n");

	/* We don't do much more until the hub enables us */
	d->driver = driver;
	d->gadget.is_selfpowered = 1;

	FUNC2(&d->vhub->lock, flags);

	return 0;
}