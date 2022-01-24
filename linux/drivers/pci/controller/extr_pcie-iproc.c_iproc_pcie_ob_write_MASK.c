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
typedef  scalar_t__ u16 ;
struct iproc_pcie {scalar_t__ base; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPROC_PCIE_OARR0 ; 
 int /*<<< orphan*/  IPROC_PCIE_OMAP0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int OARR_SIZE_CFG_SHIFT ; 
 int OARR_VALID ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct iproc_pcie*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC8(struct iproc_pcie *pcie, int window_idx,
				      int size_idx, u64 axi_addr, u64 pci_addr)
{
	struct device *dev = pcie->dev;
	u16 oarr_offset, omap_offset;

	/*
	 * Derive the OARR/OMAP offset from the first pair (OARR0/OMAP0) based
	 * on window index.
	 */
	oarr_offset = FUNC3(pcie, FUNC0(IPROC_PCIE_OARR0,
							  window_idx));
	omap_offset = FUNC3(pcie, FUNC0(IPROC_PCIE_OMAP0,
							  window_idx));
	if (FUNC2(oarr_offset) ||
	    FUNC2(omap_offset))
		return -EINVAL;

	/*
	 * Program the OARR registers.  The upper 32-bit OARR register is
	 * always right after the lower 32-bit OARR register.
	 */
	FUNC7(FUNC4(axi_addr) | (size_idx << OARR_SIZE_CFG_SHIFT) |
	       OARR_VALID, pcie->base + oarr_offset);
	FUNC7(FUNC6(axi_addr), pcie->base + oarr_offset + 4);

	/* now program the OMAP registers */
	FUNC7(FUNC4(pci_addr), pcie->base + omap_offset);
	FUNC7(FUNC6(pci_addr), pcie->base + omap_offset + 4);

	FUNC1(dev, "ob window [%d]: offset 0x%x axi %pap pci %pap\n",
		window_idx, oarr_offset, &axi_addr, &pci_addr);
	FUNC1(dev, "oarr lo 0x%x oarr hi 0x%x\n",
		FUNC5(pcie->base + oarr_offset),
		FUNC5(pcie->base + oarr_offset + 4));
	FUNC1(dev, "omap lo 0x%x omap hi 0x%x\n",
		FUNC5(pcie->base + omap_offset),
		FUNC5(pcie->base + omap_offset + 4));

	return 0;
}