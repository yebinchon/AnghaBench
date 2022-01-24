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
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct pci_bus*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct pci_bus *bus, int devfn)
{
	u32 l;
	int count = 0;
	int delay = 1000, step = 20;
	bool found = false;

	do {
		found = FUNC3(bus, devfn, &l, 0);
		count++;

		if (found)
			break;

		FUNC2(step);
		delay -= step;
	} while (delay > 0);

	if (count > 1)
		FUNC5("pci %04x:%02x:%02x.%d id reading try %d times with interval %d ms to get %08x\n",
			FUNC4(bus), bus->number, FUNC1(devfn),
			FUNC0(devfn), count, step, l);

	return found;
}