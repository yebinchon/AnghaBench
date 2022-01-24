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
struct ast_vhub_dev {TYPE_1__* vhub; int /*<<< orphan*/  driver; int /*<<< orphan*/  gadget; int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct ast_vhub_dev *d)
{
	/* No driver, just disable the device and return */
	if (!d->driver) {
		FUNC1(d);
		return;
	}

	/* If the port isn't enabled, just enable it */
	if (!d->enabled) {
		FUNC0(d, "Reset of disabled device, enabling...\n");
		FUNC2(d);
	} else {
		FUNC0(d, "Reset of enabled device, resetting...\n");
		FUNC4(&d->vhub->lock);
		FUNC5(&d->gadget, d->driver);
		FUNC3(&d->vhub->lock);

		/*
		 * Disable and maybe re-enable HW, this will clear the address
		 * and speed setting.
		 */
		FUNC1(d);
		FUNC2(d);
	}
}