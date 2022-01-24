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
struct pci_bus {int /*<<< orphan*/  number; int /*<<< orphan*/  dev; struct faraday_pci* sysdata; } ;
struct faraday_pci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct faraday_pci*,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, unsigned int fn,
				    int config, int size, u32 value)
{
	struct faraday_pci *p = bus->sysdata;

	FUNC2(&bus->dev,
		"[write] slt: %.2d, fnc: %d, cnf: 0x%.2X, val (%d bytes): 0x%.8X\n",
		FUNC1(fn), FUNC0(fn), config, size, value);

	return FUNC3(p, bus->number, fn, config, size,
					    value);
}