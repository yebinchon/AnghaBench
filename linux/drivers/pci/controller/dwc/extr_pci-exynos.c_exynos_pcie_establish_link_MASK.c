#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcie_port {int dummy; } ;
struct exynos_pcie {int /*<<< orphan*/  phy; TYPE_1__* mem_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; struct pcie_port pp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  elbi_base; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PCIE_APP_LTSSM_ENABLE ; 
 int PCIE_ELBI_LTSSM_ENABLE ; 
 int /*<<< orphan*/  PCIE_PWR_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct exynos_pcie *ep)
{
	struct dw_pcie *pci = ep->pci;
	struct pcie_port *pp = &pci->pp;
	struct device *dev = pci->dev;

	if (FUNC1(pci)) {
		FUNC0(dev, "Link already up\n");
		return 0;
	}

	FUNC4(ep);

	FUNC11(ep->phy);

	FUNC7(ep->mem_res->elbi_base, 1,
			PCIE_PWR_RESET);

	FUNC10(ep->phy);
	FUNC8(ep->phy);

	FUNC6(ep);
	FUNC2(pp);
	FUNC5(ep);

	/* assert LTSSM enable */
	FUNC7(ep->mem_res->elbi_base, PCIE_ELBI_LTSSM_ENABLE,
			  PCIE_APP_LTSSM_ENABLE);

	/* check if the link is up or not */
	if (!FUNC3(pci))
		return 0;

	FUNC9(ep->phy);
	return -ETIMEDOUT;
}