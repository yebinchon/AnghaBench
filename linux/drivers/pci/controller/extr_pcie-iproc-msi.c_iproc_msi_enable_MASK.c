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
struct iproc_msi {int nr_eq_region; int nr_msi_region; int nr_irqs; scalar_t__ has_inten_reg; scalar_t__ msi_addr; scalar_t__ eq_dma; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EQ_MEM_REGION_SIZE ; 
 int /*<<< orphan*/  IPROC_MSI_CTRL ; 
 int IPROC_MSI_EQ_EN ; 
 int /*<<< orphan*/  IPROC_MSI_EQ_PAGE ; 
 int /*<<< orphan*/  IPROC_MSI_EQ_PAGE_UPPER ; 
 int IPROC_MSI_INTR_EN ; 
 int /*<<< orphan*/  IPROC_MSI_INTS_EN ; 
 int IPROC_MSI_INT_N_EVENT ; 
 int /*<<< orphan*/  IPROC_MSI_PAGE ; 
 int /*<<< orphan*/  IPROC_MSI_PAGE_UPPER ; 
 int MSI_MEM_REGION_SIZE ; 
 int FUNC1 (struct iproc_msi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iproc_msi*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct iproc_msi *msi)
{
	int i, eq;
	u32 val;

	/* Program memory region for each event queue */
	for (i = 0; i < msi->nr_eq_region; i++) {
		dma_addr_t addr = msi->eq_dma + (i * EQ_MEM_REGION_SIZE);

		FUNC2(msi, IPROC_MSI_EQ_PAGE, i,
				    FUNC3(addr));
		FUNC2(msi, IPROC_MSI_EQ_PAGE_UPPER, i,
				    FUNC4(addr));
	}

	/* Program address region for MSI posted writes */
	for (i = 0; i < msi->nr_msi_region; i++) {
		phys_addr_t addr = msi->msi_addr + (i * MSI_MEM_REGION_SIZE);

		FUNC2(msi, IPROC_MSI_PAGE, i,
				    FUNC3(addr));
		FUNC2(msi, IPROC_MSI_PAGE_UPPER, i,
				    FUNC4(addr));
	}

	for (eq = 0; eq < msi->nr_irqs; eq++) {
		/* Enable MSI event queue */
		val = IPROC_MSI_INTR_EN | IPROC_MSI_INT_N_EVENT |
			IPROC_MSI_EQ_EN;
		FUNC2(msi, IPROC_MSI_CTRL, eq, val);

		/*
		 * Some legacy platforms require the MSI interrupt enable
		 * register to be set explicitly.
		 */
		if (msi->has_inten_reg) {
			val = FUNC1(msi, IPROC_MSI_INTS_EN, eq);
			val |= FUNC0(eq);
			FUNC2(msi, IPROC_MSI_INTS_EN, eq, val);
		}
	}
}