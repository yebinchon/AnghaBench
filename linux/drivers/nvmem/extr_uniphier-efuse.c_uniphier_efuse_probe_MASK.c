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
struct uniphier_efuse_priv {int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int stride; int word_size; int read_only; struct device* dev; struct uniphier_efuse_priv* priv; int /*<<< orphan*/  size; int /*<<< orphan*/  reg_read; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct uniphier_efuse_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC5 (struct device*,struct nvmem_config*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  uniphier_reg_read ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct nvmem_device *nvmem;
	struct nvmem_config econfig = {};
	struct uniphier_efuse_priv *priv;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC3(dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	econfig.stride = 1;
	econfig.word_size = 1;
	econfig.read_only = true;
	econfig.reg_read = uniphier_reg_read;
	econfig.size = FUNC7(res);
	econfig.priv = priv;
	econfig.dev = dev;
	nvmem = FUNC5(dev, &econfig);

	return FUNC2(nvmem);
}