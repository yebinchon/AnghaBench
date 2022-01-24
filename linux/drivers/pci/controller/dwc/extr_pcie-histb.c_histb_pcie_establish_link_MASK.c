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
struct pcie_port {int dummy; } ;
struct histb_pcie {int dummy; } ;
struct dw_pcie {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_APP_LTSSM_ENABLE ; 
 int /*<<< orphan*/  PCIE_DEVICE_TYPE_MASK ; 
 int /*<<< orphan*/  PCIE_SYS_CTRL0 ; 
 int /*<<< orphan*/  PCIE_SYS_CTRL7 ; 
 int /*<<< orphan*/  PCIE_WM_RC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 int FUNC3 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct histb_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct histb_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dw_pcie* FUNC6 (struct pcie_port*) ; 
 struct histb_pcie* FUNC7 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC8(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC6(pp);
	struct histb_pcie *hipcie = FUNC7(pci);
	u32 regval;

	if (FUNC1(pci)) {
		FUNC0(pci->dev, "Link already up\n");
		return 0;
	}

	/* PCIe RC work mode */
	regval = FUNC4(hipcie, PCIE_SYS_CTRL0);
	regval &= ~PCIE_DEVICE_TYPE_MASK;
	regval |= PCIE_WM_RC;
	FUNC5(hipcie, PCIE_SYS_CTRL0, regval);

	/* setup root complex */
	FUNC2(pp);

	/* assert LTSSM enable */
	regval = FUNC4(hipcie, PCIE_SYS_CTRL7);
	regval |= PCIE_APP_LTSSM_ENABLE;
	FUNC5(hipcie, PCIE_SYS_CTRL7, regval);

	return FUNC3(pci);
}