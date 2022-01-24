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
typedef  int u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct iproc_pcie_ib_map {scalar_t__ imap_window_offset; scalar_t__ imap_addr_offset; } ;
struct iproc_pcie {scalar_t__ base; struct iproc_pcie_ib_map* ib_map; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int IMAP_VALID ; 
 int /*<<< orphan*/  IPROC_PCIE_IARR0 ; 
 int /*<<< orphan*/  IPROC_PCIE_IMAP0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int,...) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct iproc_pcie*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct iproc_pcie *pcie, int region_idx,
			       int size_idx, int nr_windows, u64 axi_addr,
			       u64 pci_addr, resource_size_t size)
{
	struct device *dev = pcie->dev;
	const struct iproc_pcie_ib_map *ib_map = &pcie->ib_map[region_idx];
	u16 iarr_offset, imap_offset;
	u32 val;
	int window_idx;

	iarr_offset = FUNC5(pcie,
				FUNC1(IPROC_PCIE_IARR0, region_idx));
	imap_offset = FUNC5(pcie,
				FUNC1(IPROC_PCIE_IMAP0, region_idx));
	if (FUNC4(iarr_offset) ||
	    FUNC4(imap_offset))
		return -EINVAL;

	FUNC2(dev, "ib region [%d]: offset 0x%x axi %pap pci %pap\n",
		region_idx, iarr_offset, &axi_addr, &pci_addr);

	/*
	 * Program the IARR registers.  The upper 32-bit IARR register is
	 * always right after the lower 32-bit IARR register.
	 */
	FUNC9(FUNC6(pci_addr) | FUNC0(size_idx),
	       pcie->base + iarr_offset);
	FUNC9(FUNC8(pci_addr), pcie->base + iarr_offset + 4);

	FUNC2(dev, "iarr lo 0x%x iarr hi 0x%x\n",
		FUNC7(pcie->base + iarr_offset),
		FUNC7(pcie->base + iarr_offset + 4));

	/*
	 * Now program the IMAP registers.  Each IARR region may have one or
	 * more IMAP windows.
	 */
	size >>= FUNC3(nr_windows);
	for (window_idx = 0; window_idx < nr_windows; window_idx++) {
		val = FUNC7(pcie->base + imap_offset);
		val |= FUNC6(axi_addr) | IMAP_VALID;
		FUNC9(val, pcie->base + imap_offset);
		FUNC9(FUNC8(axi_addr),
		       pcie->base + imap_offset + ib_map->imap_addr_offset);

		FUNC2(dev, "imap window [%d] lo 0x%x hi 0x%x\n",
			window_idx, FUNC7(pcie->base + imap_offset),
			FUNC7(pcie->base + imap_offset +
			      ib_map->imap_addr_offset));

		imap_offset += ib_map->imap_window_offset;
		axi_addr += size;
	}

	return 0;
}