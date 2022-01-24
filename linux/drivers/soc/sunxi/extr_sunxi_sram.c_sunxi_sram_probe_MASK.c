#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sunxi_sramc_variant {scalar_t__ has_emac_clock; } ;
struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 struct regmap* base ; 
 struct dentry* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC3 (TYPE_1__*,struct resource*) ; 
 struct regmap* FUNC4 (TYPE_1__*,struct regmap*,int /*<<< orphan*/ *) ; 
 struct sunxi_sramc_variant* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* sram_dev ; 
 int /*<<< orphan*/  sunxi_sram_emac_clock_regmap ; 
 int /*<<< orphan*/  sunxi_sram_fops ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct resource *res;
	struct dentry *d;
	struct regmap *emac_clock;
	const struct sunxi_sramc_variant *variant;

	sram_dev = &pdev->dev;

	variant = FUNC5(&pdev->dev);
	if (!variant)
		return -EINVAL;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	base = FUNC3(&pdev->dev, res);
	if (FUNC0(base))
		return FUNC1(base);

	FUNC6(pdev->dev.of_node, NULL, NULL, &pdev->dev);

	d = FUNC2("sram", S_IRUGO, NULL, NULL,
				&sunxi_sram_fops);
	if (!d)
		return -ENOMEM;

	if (variant->has_emac_clock) {
		emac_clock = FUNC4(&pdev->dev, base,
						   &sunxi_sram_emac_clock_regmap);

		if (FUNC0(emac_clock))
			return FUNC1(emac_clock);
	}

	return 0;
}