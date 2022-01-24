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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int stride; int word_size; unsigned int size; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  name; struct device* dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (struct nvmem_device*) ; 
 int /*<<< orphan*/  SM_EFUSE_USER_MAX ; 
 scalar_t__ clk_disable_unprepare ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct device*,void (*) (void*),struct clk*) ; 
 struct clk* FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 struct nvmem_config* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC9 (struct device*,struct nvmem_config*) ; 
 int /*<<< orphan*/  meson_efuse_read ; 
 int /*<<< orphan*/  meson_efuse_write ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct nvmem_device *nvmem;
	struct nvmem_config *econfig;
	struct clk *clk;
	unsigned int size;
	int ret;

	clk = FUNC7(dev, NULL);
	if (FUNC0(clk)) {
		ret = FUNC1(clk);
		if (ret != -EPROBE_DEFER)
			FUNC4(dev, "failed to get efuse gate");
		return ret;
	}

	ret = FUNC3(clk);
	if (ret) {
		FUNC4(dev, "failed to enable gate");
		return ret;
	}

	ret = FUNC6(dev,
				       (void(*)(void *))clk_disable_unprepare,
				       clk);
	if (ret) {
		FUNC4(dev, "failed to add disable callback");
		return ret;
	}

	if (FUNC10(SM_EFUSE_USER_MAX, &size, 0, 0, 0, 0, 0) < 0) {
		FUNC4(dev, "failed to get max user");
		return -EINVAL;
	}

	econfig = FUNC8(dev, sizeof(*econfig), GFP_KERNEL);
	if (!econfig)
		return -ENOMEM;

	econfig->dev = dev;
	econfig->name = FUNC5(dev);
	econfig->stride = 1;
	econfig->word_size = 1;
	econfig->reg_read = meson_efuse_read;
	econfig->reg_write = meson_efuse_write;
	econfig->size = size;

	nvmem = FUNC9(&pdev->dev, econfig);

	return FUNC2(nvmem);
}