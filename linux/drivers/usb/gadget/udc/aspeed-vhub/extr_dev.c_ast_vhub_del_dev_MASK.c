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
struct ast_vhub_dev {int registered; int /*<<< orphan*/  port_dev; int /*<<< orphan*/  gadget; TYPE_1__* vhub; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ast_vhub_dev *d)
{
	unsigned long flags;

	FUNC1(&d->vhub->lock, flags);
	if (!d->registered) {
		FUNC2(&d->vhub->lock, flags);
		return;
	}
	d->registered = false;
	FUNC2(&d->vhub->lock, flags);

	FUNC3(&d->gadget);
	FUNC0(d->port_dev);
}