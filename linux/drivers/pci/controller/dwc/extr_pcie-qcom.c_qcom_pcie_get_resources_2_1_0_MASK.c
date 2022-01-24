#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qcom_pcie_resources_2_1_0 {void* phy_reset; void* por_reset; void* ahb_reset; void* axi_reset; void* pci_reset; void* phy_clk; void* core_clk; void* iface_clk; TYPE_2__* supplies; } ;
struct TYPE_4__ {struct qcom_pcie_resources_2_1_0 v2_1_0; } ;
struct qcom_pcie {struct dw_pcie* pci; TYPE_1__ res; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC6 (struct device*,char*) ; 

__attribute__((used)) static int FUNC7(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_2_1_0 *res = &pcie->res.v2_1_0;
	struct dw_pcie *pci = pcie->pci;
	struct device *dev = pci->dev;
	int ret;

	res->supplies[0].supply = "vdda";
	res->supplies[1].supply = "vdda_phy";
	res->supplies[2].supply = "vdda_refclk";
	ret = FUNC5(dev, FUNC0(res->supplies),
				      res->supplies);
	if (ret)
		return ret;

	res->iface_clk = FUNC4(dev, "iface");
	if (FUNC1(res->iface_clk))
		return FUNC2(res->iface_clk);

	res->core_clk = FUNC4(dev, "core");
	if (FUNC1(res->core_clk))
		return FUNC2(res->core_clk);

	res->phy_clk = FUNC4(dev, "phy");
	if (FUNC1(res->phy_clk))
		return FUNC2(res->phy_clk);

	res->pci_reset = FUNC6(dev, "pci");
	if (FUNC1(res->pci_reset))
		return FUNC2(res->pci_reset);

	res->axi_reset = FUNC6(dev, "axi");
	if (FUNC1(res->axi_reset))
		return FUNC2(res->axi_reset);

	res->ahb_reset = FUNC6(dev, "ahb");
	if (FUNC1(res->ahb_reset))
		return FUNC2(res->ahb_reset);

	res->por_reset = FUNC6(dev, "por");
	if (FUNC1(res->por_reset))
		return FUNC2(res->por_reset);

	res->phy_reset = FUNC6(dev, "phy");
	return FUNC3(res->phy_reset);
}