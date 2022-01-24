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
struct ssb_mipscore {int /*<<< orphan*/  nr_serial_ports; int /*<<< orphan*/  serial_ports; TYPE_1__* dev; } ;
struct ssb_bus {int /*<<< orphan*/  chipco; int /*<<< orphan*/  extif; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ssb_mipscore *mcore)
{
	struct ssb_bus *bus = mcore->dev->bus;

	if (FUNC2(&bus->extif))
		mcore->nr_serial_ports = FUNC3(&bus->extif, mcore->serial_ports);
	else if (FUNC0(&bus->chipco))
		mcore->nr_serial_ports = FUNC1(&bus->chipco, mcore->serial_ports);
	else
		mcore->nr_serial_ports = 0;
}