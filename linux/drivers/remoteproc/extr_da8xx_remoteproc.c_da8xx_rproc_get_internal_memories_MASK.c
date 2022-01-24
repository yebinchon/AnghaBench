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
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct da8xx_rproc {int num_mems; TYPE_1__* mem; } ;
struct TYPE_2__ {int bus_addr; int dev_addr; int /*<<< orphan*/  cpu_addr; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 int DA8XX_RPROC_LOCAL_ADDRESS_MASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char const* const,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char const* const) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 TYPE_1__* FUNC6 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char const* const) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev,
					     struct da8xx_rproc *drproc)
{
	static const char * const mem_names[] = {"l2sram", "l1pram", "l1dram"};
	int num_mems = FUNC0(mem_names);
	struct device *dev = &pdev->dev;
	struct resource *res;
	int i;

	drproc->mem = FUNC6(dev, num_mems, sizeof(*drproc->mem),
				   GFP_KERNEL);
	if (!drproc->mem)
		return -ENOMEM;

	for (i = 0; i < num_mems; i++) {
		res = FUNC7(pdev, IORESOURCE_MEM,
						   mem_names[i]);
		drproc->mem[i].cpu_addr = FUNC5(dev, res);
		if (FUNC1(drproc->mem[i].cpu_addr)) {
			FUNC4(dev, "failed to parse and map %s memory\n",
				mem_names[i]);
			return FUNC2(drproc->mem[i].cpu_addr);
		}
		drproc->mem[i].bus_addr = res->start;
		drproc->mem[i].dev_addr =
				res->start & DA8XX_RPROC_LOCAL_ADDRESS_MASK;
		drproc->mem[i].size = FUNC8(res);

		FUNC3(dev, "memory %8s: bus addr %pa size 0x%zx va %p da 0x%x\n",
			mem_names[i], &drproc->mem[i].bus_addr,
			drproc->mem[i].size, drproc->mem[i].cpu_addr,
			drproc->mem[i].dev_addr);
	}
	drproc->num_mems = num_mems;

	return 0;
}