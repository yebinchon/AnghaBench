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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct meson_mx_efuse_platform_data {int /*<<< orphan*/  word_size; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int read_only; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  size; int /*<<< orphan*/  word_size; int /*<<< orphan*/  stride; struct meson_mx_efuse* priv; int /*<<< orphan*/ * dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct meson_mx_efuse {int /*<<< orphan*/  nvmem; TYPE_1__ config; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_512 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct meson_mx_efuse* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  meson_mx_efuse_read ; 
 struct meson_mx_efuse_platform_data* FUNC9 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	const struct meson_mx_efuse_platform_data *drvdata;
	struct meson_mx_efuse *efuse;
	struct resource *res;

	drvdata = FUNC9(&pdev->dev);
	if (!drvdata)
		return -EINVAL;

	efuse = FUNC7(&pdev->dev, sizeof(*efuse), GFP_KERNEL);
	if (!efuse)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	efuse->base = FUNC5(&pdev->dev, res);
	if (FUNC0(efuse->base))
		return FUNC1(efuse->base);

	efuse->config.name = FUNC6(&pdev->dev, drvdata->name,
					  GFP_KERNEL);
	efuse->config.owner = THIS_MODULE;
	efuse->config.dev = &pdev->dev;
	efuse->config.priv = efuse;
	efuse->config.stride = drvdata->word_size;
	efuse->config.word_size = drvdata->word_size;
	efuse->config.size = SZ_512;
	efuse->config.read_only = true;
	efuse->config.reg_read = meson_mx_efuse_read;

	efuse->core_clk = FUNC4(&pdev->dev, "core");
	if (FUNC0(efuse->core_clk)) {
		FUNC3(&pdev->dev, "Failed to get core clock\n");
		return FUNC1(efuse->core_clk);
	}

	efuse->nvmem = FUNC8(&pdev->dev, &efuse->config);

	return FUNC2(efuse->nvmem);
}