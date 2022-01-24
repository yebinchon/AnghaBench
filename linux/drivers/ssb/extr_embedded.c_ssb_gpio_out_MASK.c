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
typedef  int /*<<< orphan*/  u32 ;
struct ssb_bus {int /*<<< orphan*/  gpio_lock; int /*<<< orphan*/  extif; int /*<<< orphan*/  chipco; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u32 FUNC7(struct ssb_bus *bus, u32 mask, u32 value)
{
	unsigned long flags;
	u32 res = 0;

	FUNC1(&bus->gpio_lock, flags);
	if (FUNC3(&bus->chipco))
		res = FUNC4(&bus->chipco, mask, value);
	else if (FUNC5(&bus->extif))
		res = FUNC6(&bus->extif, mask, value);
	else
		FUNC0(1);
	FUNC2(&bus->gpio_lock, flags);

	return res;
}