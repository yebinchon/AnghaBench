#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qcom_pcie_resources_2_4_0 {int num_clks; void* phy_ahb_reset; void* ahb_reset; void* pwr_reset; void* pipe_sticky_reset; void* axi_m_sticky_reset; void* phy_reset; void* parf_reset; void* axi_s_xpu_reset; void* axi_m_vmid_reset; void* pipe_reset; void* axi_s_reset; void* axi_m_reset; TYPE_2__* clks; } ;
struct TYPE_3__ {struct qcom_pcie_resources_2_4_0 v2_4_0; } ;
struct qcom_pcie {struct dw_pcie* pci; TYPE_1__ res; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {char* id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct device*,int,TYPE_2__*) ; 
 void* FUNC3 (struct device*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_2_4_0 *res = &pcie->res.v2_4_0;
	struct dw_pcie *pci = pcie->pci;
	struct device *dev = pci->dev;
	bool is_ipq = FUNC4(dev->of_node, "qcom,pcie-ipq4019");
	int ret;

	res->clks[0].id = "aux";
	res->clks[1].id = "master_bus";
	res->clks[2].id = "slave_bus";
	res->clks[3].id = "iface";

	/* qcom,pcie-ipq4019 is defined without "iface" */
	res->num_clks = is_ipq ? 3 : 4;

	ret = FUNC2(dev, res->num_clks, res->clks);
	if (ret < 0)
		return ret;

	res->axi_m_reset = FUNC3(dev, "axi_m");
	if (FUNC0(res->axi_m_reset))
		return FUNC1(res->axi_m_reset);

	res->axi_s_reset = FUNC3(dev, "axi_s");
	if (FUNC0(res->axi_s_reset))
		return FUNC1(res->axi_s_reset);

	if (is_ipq) {
		/*
		 * These resources relates to the PHY or are secure clocks, but
		 * are controlled here for IPQ4019
		 */
		res->pipe_reset = FUNC3(dev, "pipe");
		if (FUNC0(res->pipe_reset))
			return FUNC1(res->pipe_reset);

		res->axi_m_vmid_reset = FUNC3(dev,
									 "axi_m_vmid");
		if (FUNC0(res->axi_m_vmid_reset))
			return FUNC1(res->axi_m_vmid_reset);

		res->axi_s_xpu_reset = FUNC3(dev,
									"axi_s_xpu");
		if (FUNC0(res->axi_s_xpu_reset))
			return FUNC1(res->axi_s_xpu_reset);

		res->parf_reset = FUNC3(dev, "parf");
		if (FUNC0(res->parf_reset))
			return FUNC1(res->parf_reset);

		res->phy_reset = FUNC3(dev, "phy");
		if (FUNC0(res->phy_reset))
			return FUNC1(res->phy_reset);
	}

	res->axi_m_sticky_reset = FUNC3(dev,
								   "axi_m_sticky");
	if (FUNC0(res->axi_m_sticky_reset))
		return FUNC1(res->axi_m_sticky_reset);

	res->pipe_sticky_reset = FUNC3(dev,
								  "pipe_sticky");
	if (FUNC0(res->pipe_sticky_reset))
		return FUNC1(res->pipe_sticky_reset);

	res->pwr_reset = FUNC3(dev, "pwr");
	if (FUNC0(res->pwr_reset))
		return FUNC1(res->pwr_reset);

	res->ahb_reset = FUNC3(dev, "ahb");
	if (FUNC0(res->ahb_reset))
		return FUNC1(res->ahb_reset);

	if (is_ipq) {
		res->phy_ahb_reset = FUNC3(dev, "phy_ahb");
		if (FUNC0(res->phy_ahb_reset))
			return FUNC1(res->phy_ahb_reset);
	}

	return 0;
}