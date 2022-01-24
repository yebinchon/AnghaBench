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
struct gigaset_driver {struct gigaset_driver* cs; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  driver_lock ; 
 int /*<<< orphan*/  FUNC0 (struct gigaset_driver*) ; 
 int /*<<< orphan*/  FUNC1 (struct gigaset_driver*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct gigaset_driver *drv)
{
	unsigned long flags;

	FUNC3(&driver_lock, flags);
	FUNC2(&drv->list);
	FUNC4(&driver_lock, flags);

	FUNC0(drv);

	FUNC1(drv->cs);
	FUNC1(drv);
}