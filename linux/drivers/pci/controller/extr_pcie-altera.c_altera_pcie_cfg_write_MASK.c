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
struct pci_bus {int /*<<< orphan*/  number; struct altera_pcie* sysdata; } ;
struct altera_pcie {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_BAD_REGISTER_NUMBER ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (struct altera_pcie*,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pci_bus*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct altera_pcie*,struct pci_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, unsigned int devfn,
				 int where, int size, u32 value)
{
	struct altera_pcie *pcie = bus->sysdata;

	if (FUNC2(bus, devfn, where))
		return PCIBIOS_BAD_REGISTER_NUMBER;

	if (!FUNC3(pcie, bus, FUNC0(devfn)))
		return PCIBIOS_DEVICE_NOT_FOUND;

	return FUNC1(pcie, bus->number, devfn, where, size,
				     value);
}