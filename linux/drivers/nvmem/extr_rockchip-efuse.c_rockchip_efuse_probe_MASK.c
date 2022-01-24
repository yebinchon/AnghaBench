#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rockchip_efuse_chip {struct device* dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct TYPE_3__ {struct device* dev; struct rockchip_efuse_chip* priv; void const* reg_read; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct rockchip_efuse_chip* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC7 (struct device*,TYPE_1__*) ; 
 TYPE_1__ econfig ; 
 void* FUNC8 (struct device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct resource *res;
	struct nvmem_device *nvmem;
	struct rockchip_efuse_chip *efuse;
	const void *data;
	struct device *dev = &pdev->dev;

	data = FUNC8(dev);
	if (!data) {
		FUNC3(dev, "failed to get match data\n");
		return -EINVAL;
	}

	efuse = FUNC6(dev, sizeof(struct rockchip_efuse_chip),
			     GFP_KERNEL);
	if (!efuse)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	efuse->base = FUNC5(dev, res);
	if (FUNC0(efuse->base))
		return FUNC1(efuse->base);

	efuse->clk = FUNC4(dev, "pclk_efuse");
	if (FUNC0(efuse->clk))
		return FUNC1(efuse->clk);

	efuse->dev = dev;
	if (FUNC9(dev->of_node, "rockchip,efuse-size",
				 &econfig.size))
		econfig.size = FUNC11(res);
	econfig.reg_read = data;
	econfig.priv = efuse;
	econfig.dev = efuse->dev;
	nvmem = FUNC7(dev, &econfig);

	return FUNC2(nvmem);
}