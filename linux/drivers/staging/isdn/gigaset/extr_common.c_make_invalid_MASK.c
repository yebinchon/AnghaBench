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
struct gigaset_driver {int /*<<< orphan*/  lock; } ;
struct cardstate {unsigned int flags; struct gigaset_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct cardstate *cs, unsigned mask)
{
	unsigned long flags;
	struct gigaset_driver *drv = cs->driver;
	FUNC0(&drv->lock, flags);
	cs->flags &= ~mask;
	FUNC1(&drv->lock, flags);
}