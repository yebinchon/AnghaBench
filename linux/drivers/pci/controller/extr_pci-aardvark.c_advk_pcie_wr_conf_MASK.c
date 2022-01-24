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
typedef  int u32 ;
struct pci_bus {scalar_t__ number; scalar_t__ primary; struct advk_pcie* sysdata; } ;
struct advk_pcie {scalar_t__ root_bus_nr; int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SET_FAILED ; 
 int PCIBIOS_SUCCESSFUL ; 
 int PCIE_CONFIG_WR_TYPE0 ; 
 int PCIE_CONFIG_WR_TYPE1 ; 
 int FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  PIO_ADDR_LS ; 
 int /*<<< orphan*/  PIO_ADDR_MS ; 
 int /*<<< orphan*/  PIO_CTRL ; 
 int PIO_CTRL_TYPE_MASK ; 
 int /*<<< orphan*/  PIO_ISR ; 
 int /*<<< orphan*/  PIO_START ; 
 int /*<<< orphan*/  PIO_WR_DATA ; 
 int /*<<< orphan*/  PIO_WR_DATA_STRB ; 
 int /*<<< orphan*/  FUNC2 (struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (struct advk_pcie*,struct pci_bus*,int) ; 
 int FUNC4 (struct advk_pcie*) ; 
 int FUNC5 (struct advk_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct advk_pcie*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct pci_bus *bus, u32 devfn,
				int where, int size, u32 val)
{
	struct advk_pcie *pcie = bus->sysdata;
	u32 reg;
	u32 data_strobe = 0x0;
	int offset;
	int ret;

	if (!FUNC3(pcie, bus, devfn))
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (bus->number == pcie->root_bus_nr)
		return FUNC7(&pcie->bridge, where,
						  size, val);

	if (where % size)
		return PCIBIOS_SET_FAILED;

	/* Start PIO */
	FUNC6(pcie, 0, PIO_START);
	FUNC6(pcie, 1, PIO_ISR);

	/* Program the control register */
	reg = FUNC5(pcie, PIO_CTRL);
	reg &= ~PIO_CTRL_TYPE_MASK;
	if (bus->primary == pcie->root_bus_nr)
		reg |= PCIE_CONFIG_WR_TYPE0;
	else
		reg |= PCIE_CONFIG_WR_TYPE1;
	FUNC6(pcie, reg, PIO_CTRL);

	/* Program the address registers */
	reg = FUNC1(bus->number, devfn, where);
	FUNC6(pcie, reg, PIO_ADDR_LS);
	FUNC6(pcie, 0, PIO_ADDR_MS);

	/* Calculate the write strobe */
	offset      = where & 0x3;
	reg         = val << (8 * offset);
	data_strobe = FUNC0(size - 1, 0) << offset;

	/* Program the data register */
	FUNC6(pcie, reg, PIO_WR_DATA);

	/* Program the data strobe */
	FUNC6(pcie, data_strobe, PIO_WR_DATA_STRB);

	/* Start the transfer */
	FUNC6(pcie, 1, PIO_START);

	ret = FUNC4(pcie);
	if (ret < 0)
		return PCIBIOS_SET_FAILED;

	FUNC2(pcie);

	return PCIBIOS_SUCCESSFUL;
}