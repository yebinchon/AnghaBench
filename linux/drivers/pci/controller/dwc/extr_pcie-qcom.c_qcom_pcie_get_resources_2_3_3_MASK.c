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
struct qcom_pcie_resources_2_3_3 {void** rst; void* aux_clk; void* ahb_clk; void* axi_s_clk; void* axi_m_clk; void* iface; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_3_3 v2_3_3; } ;
struct qcom_pcie {struct dw_pcie* pci; TYPE_1__ res; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char const*) ; 

__attribute__((used)) static int FUNC5(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_2_3_3 *res = &pcie->res.v2_3_3;
	struct dw_pcie *pci = pcie->pci;
	struct device *dev = pci->dev;
	int i;
	const char *rst_names[] = { "axi_m", "axi_s", "pipe",
				    "axi_m_sticky", "sticky",
				    "ahb", "sleep", };

	res->iface = FUNC3(dev, "iface");
	if (FUNC1(res->iface))
		return FUNC2(res->iface);

	res->axi_m_clk = FUNC3(dev, "axi_m");
	if (FUNC1(res->axi_m_clk))
		return FUNC2(res->axi_m_clk);

	res->axi_s_clk = FUNC3(dev, "axi_s");
	if (FUNC1(res->axi_s_clk))
		return FUNC2(res->axi_s_clk);

	res->ahb_clk = FUNC3(dev, "ahb");
	if (FUNC1(res->ahb_clk))
		return FUNC2(res->ahb_clk);

	res->aux_clk = FUNC3(dev, "aux");
	if (FUNC1(res->aux_clk))
		return FUNC2(res->aux_clk);

	for (i = 0; i < FUNC0(rst_names); i++) {
		res->rst[i] = FUNC4(dev, rst_names[i]);
		if (FUNC1(res->rst[i]))
			return FUNC2(res->rst[i]);
	}

	return 0;
}