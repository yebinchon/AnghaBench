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
struct ssb_bus {int /*<<< orphan*/  extif; int /*<<< orphan*/  chipco; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct ssb_bus *bus, u32 ticks)
{
	if (FUNC0(&bus->chipco)) {
		FUNC1(&bus->chipco, ticks);
		return 0;
	}
	if (FUNC2(&bus->extif)) {
		FUNC3(&bus->extif, ticks);
		return 0;
	}
	return -ENODEV;
}