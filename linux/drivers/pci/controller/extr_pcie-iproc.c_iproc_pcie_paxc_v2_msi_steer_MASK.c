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
typedef  int /*<<< orphan*/  u32 ;
struct iproc_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIC_V3_CFG ; 
 int /*<<< orphan*/  IPROC_PCIE_MSI_ADDR_HI ; 
 int /*<<< orphan*/  IPROC_PCIE_MSI_ADDR_LO ; 
 int /*<<< orphan*/  IPROC_PCIE_MSI_BASE_ADDR ; 
 int /*<<< orphan*/  IPROC_PCIE_MSI_EN_CFG ; 
 int /*<<< orphan*/  IPROC_PCIE_MSI_GIC_MODE ; 
 int /*<<< orphan*/  IPROC_PCIE_MSI_WINDOW_SIZE ; 
 int /*<<< orphan*/  MSI_ENABLE_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct iproc_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iproc_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct iproc_pcie *pcie, u64 msi_addr,
					 bool enable)
{
	u32 val;

	if (!enable) {
		/*
		 * Disable PAXC MSI steering. All write transfers will be
		 * treated as non-MSI transfers
		 */
		val = FUNC0(pcie, IPROC_PCIE_MSI_EN_CFG);
		val &= ~MSI_ENABLE_CFG;
		FUNC1(pcie, IPROC_PCIE_MSI_EN_CFG, val);
		return;
	}

	/*
	 * Program bits [43:13] of address of GITS_TRANSLATER register into
	 * bits [30:0] of the MSI base address register.  In fact, in all iProc
	 * based SoCs, all I/O register bases are well below the 32-bit
	 * boundary, so we can safely assume bits [43:32] are always zeros.
	 */
	FUNC1(pcie, IPROC_PCIE_MSI_BASE_ADDR,
			     (u32)(msi_addr >> 13));

	/* use a default 8K window size */
	FUNC1(pcie, IPROC_PCIE_MSI_WINDOW_SIZE, 0);

	/* steering MSI to GICv3 ITS */
	val = FUNC0(pcie, IPROC_PCIE_MSI_GIC_MODE);
	val |= GIC_V3_CFG;
	FUNC1(pcie, IPROC_PCIE_MSI_GIC_MODE, val);

	/*
	 * Program bits [43:2] of address of GITS_TRANSLATER register into the
	 * iProc MSI address registers.
	 */
	msi_addr >>= 2;
	FUNC1(pcie, IPROC_PCIE_MSI_ADDR_HI,
			     FUNC3(msi_addr));
	FUNC1(pcie, IPROC_PCIE_MSI_ADDR_LO,
			     FUNC2(msi_addr));

	/* enable MSI */
	val = FUNC0(pcie, IPROC_PCIE_MSI_EN_CFG);
	val |= MSI_ENABLE_CFG;
	FUNC1(pcie, IPROC_PCIE_MSI_EN_CFG, val);
}