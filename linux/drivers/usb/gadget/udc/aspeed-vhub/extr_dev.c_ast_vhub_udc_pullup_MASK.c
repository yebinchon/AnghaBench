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
struct usb_gadget {int dummy; } ;
struct ast_vhub_dev {TYPE_1__* vhub; scalar_t__ enabled; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_dev* FUNC6 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget* gadget, int on)
{
	struct ast_vhub_dev *d = FUNC6(gadget);
	unsigned long flags;

	FUNC4(&d->vhub->lock, flags);

	FUNC0(d, "pullup(%d)\n", on);

	/* Mark disconnected in the hub */
	FUNC3(d->vhub, d->index, on);

	/*
	 * If enabled, nuke all requests if any (there shouldn't be)
	 * and disable the port. This will clear the address too.
	 */
	if (d->enabled) {
		FUNC2(d);
		FUNC1(d);
	}

	FUNC5(&d->vhub->lock, flags);

	return 0;
}