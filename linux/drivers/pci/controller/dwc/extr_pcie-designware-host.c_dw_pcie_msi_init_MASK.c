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
struct pcie_port {scalar_t__ msi_data; int /*<<< orphan*/ * msi_page; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCIE_MSI_ADDR_HI ; 
 int /*<<< orphan*/  PCIE_MSI_ADDR_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pcie_port*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct dw_pcie* FUNC7 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void FUNC9(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC7(pp);
	struct device *dev = pci->dev;
	u64 msi_target;

	pp->msi_page = FUNC1(GFP_KERNEL);
	pp->msi_data = FUNC3(dev, pp->msi_page, 0, PAGE_SIZE,
				    DMA_FROM_DEVICE);
	if (FUNC4(dev, pp->msi_data)) {
		FUNC2(dev, "Failed to map MSI data\n");
		FUNC0(pp->msi_page);
		pp->msi_page = NULL;
		return;
	}
	msi_target = (u64)pp->msi_data;

	/* Program the msi_data */
	FUNC5(pp, PCIE_MSI_ADDR_LO, 4,
			    FUNC6(msi_target));
	FUNC5(pp, PCIE_MSI_ADDR_HI, 4,
			    FUNC8(msi_target));
}