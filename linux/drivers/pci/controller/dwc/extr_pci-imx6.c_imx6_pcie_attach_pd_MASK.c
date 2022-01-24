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
struct imx6_pcie {void* pd_pcie_phy; void* pd_pcie; } ;
struct device_link {int dummy; } ;
struct device {scalar_t__ pm_domain; } ;

/* Variables and functions */
 int DL_FLAG_PM_RUNTIME ; 
 int DL_FLAG_RPM_ACTIVE ; 
 int DL_FLAG_STATELESS ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct imx6_pcie* FUNC3 (struct device*) ; 
 void* FUNC4 (struct device*,char*) ; 
 struct device_link* FUNC5 (struct device*,void*,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct imx6_pcie *imx6_pcie = FUNC3(dev);
	struct device_link *link;

	/* Do nothing when in a single power domain */
	if (dev->pm_domain)
		return 0;

	imx6_pcie->pd_pcie = FUNC4(dev, "pcie");
	if (FUNC0(imx6_pcie->pd_pcie))
		return FUNC1(imx6_pcie->pd_pcie);
	/* Do nothing when power domain missing */
	if (!imx6_pcie->pd_pcie)
		return 0;
	link = FUNC5(dev, imx6_pcie->pd_pcie,
			DL_FLAG_STATELESS |
			DL_FLAG_PM_RUNTIME |
			DL_FLAG_RPM_ACTIVE);
	if (!link) {
		FUNC2(dev, "Failed to add device_link to pcie pd.\n");
		return -EINVAL;
	}

	imx6_pcie->pd_pcie_phy = FUNC4(dev, "pcie_phy");
	if (FUNC0(imx6_pcie->pd_pcie_phy))
		return FUNC1(imx6_pcie->pd_pcie_phy);

	link = FUNC5(dev, imx6_pcie->pd_pcie_phy,
			DL_FLAG_STATELESS |
			DL_FLAG_PM_RUNTIME |
			DL_FLAG_RPM_ACTIVE);
	if (!link) {
		FUNC2(dev, "Failed to add device_link to pcie_phy pd.\n");
		return -EINVAL;
	}

	return 0;
}