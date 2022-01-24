#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct stm32_vrefbuf {struct regulator_dev* clk; struct regulator_dev* base; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  init_data; int /*<<< orphan*/  of_node; struct stm32_vrefbuf* driver_data; TYPE_1__* dev; } ;
struct TYPE_16__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  STM32_VREFBUF_AUTO_SUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 struct regulator_dev* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC6 (TYPE_1__*,struct resource*) ; 
 struct stm32_vrefbuf* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 struct regulator_dev* FUNC21 (int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  stm32_vrefbuf_regu ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct resource *res;
	struct stm32_vrefbuf *priv;
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	int ret;

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	priv->dev = &pdev->dev;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC6(&pdev->dev, res);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	FUNC13(&pdev->dev);
	FUNC17(&pdev->dev);
	FUNC18(&pdev->dev,
					 STM32_VREFBUF_AUTO_SUSPEND_DELAY_MS);
	FUNC20(&pdev->dev);
	FUNC12(&pdev->dev);

	ret = FUNC3(priv->clk);
	if (ret) {
		FUNC4(&pdev->dev, "clk prepare failed with error %d\n", ret);
		goto err_pm_stop;
	}

	config.dev = &pdev->dev;
	config.driver_data = priv;
	config.of_node = pdev->dev.of_node;
	config.init_data = FUNC8(&pdev->dev,
						      pdev->dev.of_node,
						      &stm32_vrefbuf_regu);

	rdev = FUNC21(&stm32_vrefbuf_regu, &config);
	if (FUNC0(rdev)) {
		ret = FUNC1(rdev);
		FUNC4(&pdev->dev, "register failed with error %d\n", ret);
		goto err_clk_dis;
	}
	FUNC10(pdev, rdev);

	FUNC14(&pdev->dev);
	FUNC15(&pdev->dev);

	return 0;

err_clk_dis:
	FUNC2(priv->clk);
err_pm_stop:
	FUNC11(&pdev->dev);
	FUNC19(&pdev->dev);
	FUNC16(&pdev->dev);

	return ret;
}