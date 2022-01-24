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
struct qcom_pcie_resources_2_3_2 {void* pipe_clk; void* slave_clk; void* master_clk; void* cfg_clk; void* aux_clk; TYPE_2__* supplies; } ;
struct TYPE_4__ {struct qcom_pcie_resources_2_3_2 v2_3_2; } ;
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

__attribute__((used)) static int FUNC6(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_2_3_2 *res = &pcie->res.v2_3_2;
	struct dw_pcie *pci = pcie->pci;
	struct device *dev = pci->dev;
	int ret;

	res->supplies[0].supply = "vdda";
	res->supplies[1].supply = "vddpe-3v3";
	ret = FUNC5(dev, FUNC0(res->supplies),
				      res->supplies);
	if (ret)
		return ret;

	res->aux_clk = FUNC4(dev, "aux");
	if (FUNC1(res->aux_clk))
		return FUNC2(res->aux_clk);

	res->cfg_clk = FUNC4(dev, "cfg");
	if (FUNC1(res->cfg_clk))
		return FUNC2(res->cfg_clk);

	res->master_clk = FUNC4(dev, "bus_master");
	if (FUNC1(res->master_clk))
		return FUNC2(res->master_clk);

	res->slave_clk = FUNC4(dev, "bus_slave");
	if (FUNC1(res->slave_clk))
		return FUNC2(res->slave_clk);

	res->pipe_clk = FUNC4(dev, "pipe");
	return FUNC3(res->pipe_clk);
}