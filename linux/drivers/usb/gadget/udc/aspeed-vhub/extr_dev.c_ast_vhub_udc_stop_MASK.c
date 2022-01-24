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
struct usb_gadget {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct ast_vhub_dev {TYPE_1__* vhub; scalar_t__ enabled; TYPE_2__ gadget; int /*<<< orphan*/ * driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_dev*,char*) ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_dev* FUNC5 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC6(struct usb_gadget *gadget)
{
	struct ast_vhub_dev *d = FUNC5(gadget);
	unsigned long flags;

	FUNC3(&d->vhub->lock, flags);

	FUNC0(d, "stop\n");

	d->driver = NULL;
	d->gadget.speed = USB_SPEED_UNKNOWN;

	FUNC2(d);

	if (d->enabled)
		FUNC1(d);

	FUNC4(&d->vhub->lock, flags);

	return 0;
}