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
struct TYPE_2__ {scalar_t__ setup_done; } ;
struct ssb_bus {int /*<<< orphan*/  chipco; TYPE_1__ pcicore; int /*<<< orphan*/ * mapped_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssb_bus*) ; 
 int FUNC1 (struct ssb_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ssb_bus*) ; 

int FUNC4(struct ssb_bus *bus)
{
	int err;

	/* Reset HW state information in memory, so that HW is
	 * completely reinitialized. */
	bus->mapped_device = NULL;
#ifdef CONFIG_SSB_DRIVER_PCICORE
	bus->pcicore.setup_done = 0;
#endif

	err = FUNC1(bus, 0);
	if (err)
		return err;
	err = FUNC3(bus);
	if (err) {
		FUNC0(bus);
		return err;
	}
	FUNC2(&bus->chipco);
	FUNC0(bus);

	return 0;
}