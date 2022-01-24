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
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct exynos_pcie {TYPE_1__* mem_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  elbi_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct resource*) ; 
 TYPE_1__* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
					     struct exynos_pcie *ep)
{
	struct dw_pcie *pci = ep->pci;
	struct device *dev = pci->dev;
	struct resource *res;

	ep->mem_res = FUNC3(dev, sizeof(*ep->mem_res), GFP_KERNEL);
	if (!ep->mem_res)
		return -ENOMEM;

	res = FUNC4(pdev, IORESOURCE_MEM, 0);
	ep->mem_res->elbi_base = FUNC2(dev, res);
	if (FUNC0(ep->mem_res->elbi_base))
		return FUNC1(ep->mem_res->elbi_base);

	return 0;
}