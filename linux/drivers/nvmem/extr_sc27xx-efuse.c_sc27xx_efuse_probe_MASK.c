#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sc27xx_efuse {int /*<<< orphan*/  hwlock; TYPE_1__* dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int stride; int word_size; int read_only; char* name; int size; TYPE_1__* dev; struct sc27xx_efuse* priv; int /*<<< orphan*/  reg_read; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nvmem_device*) ; 
 int FUNC1 (struct nvmem_device*) ; 
 int SC27XX_EFUSE_BLOCK_MAX ; 
 int SC27XX_EFUSE_BLOCK_WIDTH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sc27xx_efuse* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC5 (TYPE_1__*,struct nvmem_config*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct sc27xx_efuse*) ; 
 int /*<<< orphan*/  sc27xx_efuse_read ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct nvmem_config econfig = { };
	struct nvmem_device *nvmem;
	struct sc27xx_efuse *efuse;
	int ret;

	efuse = FUNC4(&pdev->dev, sizeof(*efuse), GFP_KERNEL);
	if (!efuse)
		return -ENOMEM;

	efuse->regmap = FUNC3(pdev->dev.parent, NULL);
	if (!efuse->regmap) {
		FUNC2(&pdev->dev, "failed to get efuse regmap\n");
		return -ENODEV;
	}

	ret = FUNC10(np, "reg", &efuse->base);
	if (ret) {
		FUNC2(&pdev->dev, "failed to get efuse base address\n");
		return ret;
	}

	ret = FUNC9(np, 0);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to get hwspinlock id\n");
		return ret;
	}

	efuse->hwlock = FUNC7(ret);
	if (!efuse->hwlock) {
		FUNC2(&pdev->dev, "failed to request hwspinlock\n");
		return -ENXIO;
	}

	FUNC8(&efuse->mutex);
	efuse->dev = &pdev->dev;
	FUNC11(pdev, efuse);

	econfig.stride = 1;
	econfig.word_size = 1;
	econfig.read_only = true;
	econfig.name = "sc27xx-efuse";
	econfig.size = SC27XX_EFUSE_BLOCK_MAX * SC27XX_EFUSE_BLOCK_WIDTH;
	econfig.reg_read = sc27xx_efuse_read;
	econfig.priv = efuse;
	econfig.dev = &pdev->dev;
	nvmem = FUNC5(&pdev->dev, &econfig);
	if (FUNC0(nvmem)) {
		FUNC2(&pdev->dev, "failed to register nvmem config\n");
		FUNC6(efuse->hwlock);
		return FUNC1(nvmem);
	}

	return 0;
}