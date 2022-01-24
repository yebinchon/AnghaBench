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
struct ssb_bus {int /*<<< orphan*/  gpio_lock; int /*<<< orphan*/  chipco; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u32 FUNC4(struct ssb_bus *bus, u32 mask, u32 value)
{
	unsigned long flags;
	u32 res = 0;

	FUNC0(&bus->gpio_lock, flags);
	if (FUNC2(&bus->chipco))
		res = FUNC3(&bus->chipco, mask, value);
	FUNC1(&bus->gpio_lock, flags);

	return res;
}