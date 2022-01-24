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
struct ssb_bus {int power_warn_count; int /*<<< orphan*/  powered_up; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct ssb_bus *bus)
{
	if (FUNC1(bus->powered_up))
		return 0;

	FUNC2("FATAL ERROR: Bus powered down while accessing PCI MMIO space\n");
	if (bus->power_warn_count <= 10) {
		bus->power_warn_count++;
		FUNC0();
	}

	return -ENODEV;
}