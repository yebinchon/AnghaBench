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
struct mtu3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  g; TYPE_1__* gadget_driver; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* suspend ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mtu3 *mtu)
{
	FUNC0(mtu->dev, "gadget SUSPEND\n");
	if (mtu->gadget_driver && mtu->gadget_driver->suspend) {
		FUNC2(&mtu->lock);
		mtu->gadget_driver->suspend(&mtu->g);
		FUNC1(&mtu->lock);
	}
}