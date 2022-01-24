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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct dw_pcie {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_WAIT_IATU ; 
 scalar_t__ LINK_WAIT_MAX_IATU_RETRIES ; 
 scalar_t__ PCIE_ATU_ENABLE ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_LIMIT ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_LOWER_BASE ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_LOWER_TARGET ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_REGION_CTRL1 ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_REGION_CTRL2 ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_UPPER_BASE ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_UPPER_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct dw_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct dw_pcie *pci, int index,
					     int type, u64 cpu_addr,
					     u64 pci_addr, u32 size)
{
	u32 retries, val;

	FUNC2(pci, index, PCIE_ATU_UNR_LOWER_BASE,
				 FUNC3(cpu_addr));
	FUNC2(pci, index, PCIE_ATU_UNR_UPPER_BASE,
				 FUNC5(cpu_addr));
	FUNC2(pci, index, PCIE_ATU_UNR_LIMIT,
				 FUNC3(cpu_addr + size - 1));
	FUNC2(pci, index, PCIE_ATU_UNR_LOWER_TARGET,
				 FUNC3(pci_addr));
	FUNC2(pci, index, PCIE_ATU_UNR_UPPER_TARGET,
				 FUNC5(pci_addr));
	FUNC2(pci, index, PCIE_ATU_UNR_REGION_CTRL1,
				 type);
	FUNC2(pci, index, PCIE_ATU_UNR_REGION_CTRL2,
				 PCIE_ATU_ENABLE);

	/*
	 * Make sure ATU enable takes effect before any subsequent config
	 * and I/O accesses.
	 */
	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
		val = FUNC1(pci, index,
					      PCIE_ATU_UNR_REGION_CTRL2);
		if (val & PCIE_ATU_ENABLE)
			return;

		FUNC4(LINK_WAIT_IATU);
	}
	FUNC0(pci->dev, "Outbound iATU is not being enabled\n");
}