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
struct kirin_pcie {TYPE_1__* pci; } ;
struct dw_pcie {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LINK_WAIT_MAX ; 
 int /*<<< orphan*/  LINK_WAIT_MIN ; 
 int /*<<< orphan*/  PCIE_APP_LTSSM_ENABLE ; 
 int /*<<< orphan*/  PCIE_LTSSM_ENABLE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct kirin_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC4 (struct pcie_port*) ; 
 struct kirin_pcie* FUNC5 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC4(pp);
	struct kirin_pcie *kirin_pcie = FUNC5(pci);
	struct device *dev = kirin_pcie->pci->dev;
	int count = 0;

	if (FUNC3(pci))
		return 0;

	FUNC1(pp);

	/* assert LTSSM enable */
	FUNC2(kirin_pcie, PCIE_LTSSM_ENABLE_BIT,
			      PCIE_APP_LTSSM_ENABLE);

	/* check if the link is up or not */
	while (!FUNC3(pci)) {
		FUNC6(LINK_WAIT_MIN, LINK_WAIT_MAX);
		count++;
		if (count == 1000) {
			FUNC0(dev, "Link Fail\n");
			return -EINVAL;
		}
	}

	return 0;
}