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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lpc18xx_scu_data {int /*<<< orphan*/  pctl; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct lpc18xx_scu_data* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct lpc18xx_scu_data*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct lpc18xx_scu_data*) ; 
 int /*<<< orphan*/  lpc18xx_scu_desc ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct lpc18xx_scu_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct lpc18xx_scu_data *scu;
	struct resource *res;
	int ret;

	scu = FUNC7(&pdev->dev, sizeof(*scu), GFP_KERNEL);
	if (!scu)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	scu->base = FUNC6(&pdev->dev, res);
	if (FUNC0(scu->base))
		return FUNC1(scu->base);

	scu->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(scu->clk)) {
		FUNC4(&pdev->dev, "Input clock not found.\n");
		return FUNC1(scu->clk);
	}

	ret = FUNC9(&pdev->dev, scu);
	if (ret) {
		FUNC4(&pdev->dev, "Unable to create group func map.\n");
		return ret;
	}

	ret = FUNC3(scu->clk);
	if (ret) {
		FUNC4(&pdev->dev, "Unable to enable clock.\n");
		return ret;
	}

	FUNC11(pdev, scu);

	scu->pctl = FUNC8(&pdev->dev, &lpc18xx_scu_desc, scu);
	if (FUNC0(scu->pctl)) {
		FUNC4(&pdev->dev, "Could not register pinctrl driver\n");
		FUNC2(scu->clk);
		return FUNC1(scu->pctl);
	}

	return 0;
}