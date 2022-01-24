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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct dw_pcie {int /*<<< orphan*/  dev; } ;
typedef  enum dw_pcie_as_type { ____Placeholder_dw_pcie_as_type } dw_pcie_as_type ;

/* Variables and functions */
#define  DW_PCIE_AS_IO 129 
#define  DW_PCIE_AS_MEM 128 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  LINK_WAIT_IATU ; 
 scalar_t__ LINK_WAIT_MAX_IATU_RETRIES ; 
 int PCIE_ATU_BAR_MODE_ENABLE ; 
 int PCIE_ATU_ENABLE ; 
 int PCIE_ATU_TYPE_IO ; 
 int PCIE_ATU_TYPE_MEM ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_LOWER_TARGET ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_REGION_CTRL1 ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_REGION_CTRL2 ; 
 int /*<<< orphan*/  PCIE_ATU_UNR_UPPER_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct dw_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dw_pcie *pci, int index,
					   int bar, u64 cpu_addr,
					   enum dw_pcie_as_type as_type)
{
	int type;
	u32 retries, val;

	FUNC2(pci, index, PCIE_ATU_UNR_LOWER_TARGET,
				 FUNC3(cpu_addr));
	FUNC2(pci, index, PCIE_ATU_UNR_UPPER_TARGET,
				 FUNC5(cpu_addr));

	switch (as_type) {
	case DW_PCIE_AS_MEM:
		type = PCIE_ATU_TYPE_MEM;
		break;
	case DW_PCIE_AS_IO:
		type = PCIE_ATU_TYPE_IO;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(pci, index, PCIE_ATU_UNR_REGION_CTRL1, type);
	FUNC2(pci, index, PCIE_ATU_UNR_REGION_CTRL2,
				 PCIE_ATU_ENABLE |
				 PCIE_ATU_BAR_MODE_ENABLE | (bar << 8));

	/*
	 * Make sure ATU enable takes effect before any subsequent config
	 * and I/O accesses.
	 */
	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
		val = FUNC1(pci, index,
					      PCIE_ATU_UNR_REGION_CTRL2);
		if (val & PCIE_ATU_ENABLE)
			return 0;

		FUNC4(LINK_WAIT_IATU);
	}
	FUNC0(pci->dev, "Inbound iATU is not being enabled\n");

	return -EBUSY;
}