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
struct sunxi_sid_cfg {int size; scalar_t__ need_register_readout; int /*<<< orphan*/  value_offset; } ;
struct sunxi_sid {struct nvmem_device* base; int /*<<< orphan*/  value_offset; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {char* name; int read_only; int size; int word_size; int stride; int /*<<< orphan*/  (* reg_read ) (struct sunxi_sid*,int /*<<< orphan*/ ,char*,int) ;struct sunxi_sid* priv; struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct nvmem_device*) ; 
 int FUNC1 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct nvmem_device* FUNC3 (struct device*,struct resource*) ; 
 void* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC5 (struct device*,struct nvmem_config*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct sunxi_sid_cfg* FUNC8 (struct device*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sunxi_sid*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sunxi_sid*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sunxi_sid*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct nvmem_config *nvmem_cfg;
	struct nvmem_device *nvmem;
	struct sunxi_sid *sid;
	int size;
	char *randomness;
	const struct sunxi_sid_cfg *cfg;

	sid = FUNC4(dev, sizeof(*sid), GFP_KERNEL);
	if (!sid)
		return -ENOMEM;

	cfg = FUNC8(dev);
	if (!cfg)
		return -EINVAL;
	sid->value_offset = cfg->value_offset;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	sid->base = FUNC3(dev, res);
	if (FUNC0(sid->base))
		return FUNC1(sid->base);

	size = cfg->size;

	nvmem_cfg = FUNC4(dev, sizeof(*nvmem_cfg), GFP_KERNEL);
	if (!nvmem_cfg)
		return -ENOMEM;

	nvmem_cfg->dev = dev;
	nvmem_cfg->name = "sunxi-sid";
	nvmem_cfg->read_only = true;
	nvmem_cfg->size = cfg->size;
	nvmem_cfg->word_size = 1;
	nvmem_cfg->stride = 4;
	nvmem_cfg->priv = sid;
	if (cfg->need_register_readout)
		nvmem_cfg->reg_read = sun8i_sid_read_by_reg;
	else
		nvmem_cfg->reg_read = sunxi_sid_read;

	nvmem = FUNC5(dev, nvmem_cfg);
	if (FUNC0(nvmem))
		return FUNC1(nvmem);

	randomness = FUNC7(size, GFP_KERNEL);
	if (!randomness)
		return -ENOMEM;

	nvmem_cfg->reg_read(sid, 0, randomness, size);
	FUNC2(randomness, size);
	FUNC6(randomness);

	FUNC10(pdev, nvmem);

	return 0;
}