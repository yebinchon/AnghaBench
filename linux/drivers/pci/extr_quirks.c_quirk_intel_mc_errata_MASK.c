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
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCIE_BUS_DEFAULT ; 
 scalar_t__ PCIE_BUS_TUNE_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int FUNC1 (struct pci_dev*,int,int*) ; 
 int FUNC2 (struct pci_dev*,int,int) ; 
 scalar_t__ pcie_bus_config ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	int err;
	u16 rcc;

	if (pcie_bus_config == PCIE_BUS_TUNE_OFF ||
	    pcie_bus_config == PCIE_BUS_DEFAULT)
		return;

	/*
	 * Intel erratum specifies bits to change but does not say what
	 * they are.  Keeping them magical until such time as the registers
	 * and values can be explained.
	 */
	err = FUNC1(dev, 0x48, &rcc);
	if (err) {
		FUNC0(dev, "Error attempting to read the read completion coalescing register\n");
		return;
	}

	if (!(rcc & (1 << 10)))
		return;

	rcc &= ~(1 << 10);

	err = FUNC2(dev, 0x48, rcc);
	if (err) {
		FUNC0(dev, "Error attempting to write the read completion coalescing register\n");
		return;
	}

	FUNC3("Read completion coalescing disabled due to hardware erratum relating to 256B MPS\n");
}