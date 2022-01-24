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
struct rockchip_pcie {int lanes; int link_gen; void* clk_pcie_pm; void* hclk_pcie; void* aclk_perf_pcie; void* aclk_pcie; void* ep_gpio; scalar_t__ is_rc; void* aclk_rst; void* pclk_rst; void* pm_rst; void* pipe_rst; void* mgmt_sticky_rst; void* mgmt_rst; void* core_rst; void* apb_base; void* mem_res; void* reg_base; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 void* FUNC8 (struct device*,char*) ; 
 int FUNC9 (struct device_node*) ; 
 int FUNC10 (struct device_node*,char*,int*) ; 
 void* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (struct rockchip_pcie*) ; 
 struct platform_device* FUNC13 (struct device*) ; 

int FUNC14(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	struct platform_device *pdev = FUNC13(dev);
	struct device_node *node = dev->of_node;
	struct resource *regs;
	int err;

	if (rockchip->is_rc) {
		regs = FUNC11(pdev,
						    IORESOURCE_MEM,
						    "axi-base");
		rockchip->reg_base = FUNC7(dev, regs);
		if (FUNC0(rockchip->reg_base))
			return FUNC1(rockchip->reg_base);
	} else {
		rockchip->mem_res =
			FUNC11(pdev, IORESOURCE_MEM,
						     "mem-base");
		if (!rockchip->mem_res)
			return -EINVAL;
	}

	regs = FUNC11(pdev, IORESOURCE_MEM,
					    "apb-base");
	rockchip->apb_base = FUNC6(dev, regs);
	if (FUNC0(rockchip->apb_base))
		return FUNC1(rockchip->apb_base);

	err = FUNC12(rockchip);
	if (err)
		return err;

	rockchip->lanes = 1;
	err = FUNC10(node, "num-lanes", &rockchip->lanes);
	if (!err && (rockchip->lanes == 0 ||
		     rockchip->lanes == 3 ||
		     rockchip->lanes > 4)) {
		FUNC3(dev, "invalid num-lanes, default to use one lane\n");
		rockchip->lanes = 1;
	}

	rockchip->link_gen = FUNC9(node);
	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
		rockchip->link_gen = 2;

	rockchip->core_rst = FUNC8(dev, "core");
	if (FUNC0(rockchip->core_rst)) {
		if (FUNC1(rockchip->core_rst) != -EPROBE_DEFER)
			FUNC2(dev, "missing core reset property in node\n");
		return FUNC1(rockchip->core_rst);
	}

	rockchip->mgmt_rst = FUNC8(dev, "mgmt");
	if (FUNC0(rockchip->mgmt_rst)) {
		if (FUNC1(rockchip->mgmt_rst) != -EPROBE_DEFER)
			FUNC2(dev, "missing mgmt reset property in node\n");
		return FUNC1(rockchip->mgmt_rst);
	}

	rockchip->mgmt_sticky_rst = FUNC8(dev,
								     "mgmt-sticky");
	if (FUNC0(rockchip->mgmt_sticky_rst)) {
		if (FUNC1(rockchip->mgmt_sticky_rst) != -EPROBE_DEFER)
			FUNC2(dev, "missing mgmt-sticky reset property in node\n");
		return FUNC1(rockchip->mgmt_sticky_rst);
	}

	rockchip->pipe_rst = FUNC8(dev, "pipe");
	if (FUNC0(rockchip->pipe_rst)) {
		if (FUNC1(rockchip->pipe_rst) != -EPROBE_DEFER)
			FUNC2(dev, "missing pipe reset property in node\n");
		return FUNC1(rockchip->pipe_rst);
	}

	rockchip->pm_rst = FUNC8(dev, "pm");
	if (FUNC0(rockchip->pm_rst)) {
		if (FUNC1(rockchip->pm_rst) != -EPROBE_DEFER)
			FUNC2(dev, "missing pm reset property in node\n");
		return FUNC1(rockchip->pm_rst);
	}

	rockchip->pclk_rst = FUNC8(dev, "pclk");
	if (FUNC0(rockchip->pclk_rst)) {
		if (FUNC1(rockchip->pclk_rst) != -EPROBE_DEFER)
			FUNC2(dev, "missing pclk reset property in node\n");
		return FUNC1(rockchip->pclk_rst);
	}

	rockchip->aclk_rst = FUNC8(dev, "aclk");
	if (FUNC0(rockchip->aclk_rst)) {
		if (FUNC1(rockchip->aclk_rst) != -EPROBE_DEFER)
			FUNC2(dev, "missing aclk reset property in node\n");
		return FUNC1(rockchip->aclk_rst);
	}

	if (rockchip->is_rc) {
		rockchip->ep_gpio = FUNC5(dev, "ep", GPIOD_OUT_HIGH);
		if (FUNC0(rockchip->ep_gpio)) {
			FUNC2(dev, "missing ep-gpios property in node\n");
			return FUNC1(rockchip->ep_gpio);
		}
	}

	rockchip->aclk_pcie = FUNC4(dev, "aclk");
	if (FUNC0(rockchip->aclk_pcie)) {
		FUNC2(dev, "aclk clock not found\n");
		return FUNC1(rockchip->aclk_pcie);
	}

	rockchip->aclk_perf_pcie = FUNC4(dev, "aclk-perf");
	if (FUNC0(rockchip->aclk_perf_pcie)) {
		FUNC2(dev, "aclk_perf clock not found\n");
		return FUNC1(rockchip->aclk_perf_pcie);
	}

	rockchip->hclk_pcie = FUNC4(dev, "hclk");
	if (FUNC0(rockchip->hclk_pcie)) {
		FUNC2(dev, "hclk clock not found\n");
		return FUNC1(rockchip->hclk_pcie);
	}

	rockchip->clk_pcie_pm = FUNC4(dev, "pm");
	if (FUNC0(rockchip->clk_pcie_pm)) {
		FUNC2(dev, "pm clock not found\n");
		return FUNC1(rockchip->clk_pcie_pm);
	}

	return 0;
}