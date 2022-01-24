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
struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;
struct musb_hdrc_platform_data {int /*<<< orphan*/ * platform_ops; } ;
struct jz4740_glue {struct clk* clk; struct platform_device* musb; TYPE_1__* dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct clk* FUNC5 (TYPE_1__*,char*) ; 
 struct jz4740_glue* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4740_musb_ops ; 
 struct musb_hdrc_platform_data jz4740_musb_platform_data ; 
 int FUNC7 (struct platform_device*) ; 
 int FUNC8 (struct platform_device*,struct musb_hdrc_platform_data*,int) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct jz4740_glue*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct musb_hdrc_platform_data	*pdata = &jz4740_musb_platform_data;
	struct platform_device		*musb;
	struct jz4740_glue		*glue;
	struct clk                      *clk;
	int				ret;

	glue = FUNC6(&pdev->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		return -ENOMEM;

	musb = FUNC10("musb-hdrc", PLATFORM_DEVID_AUTO);
	if (!musb) {
		FUNC4(&pdev->dev, "failed to allocate musb device\n");
		return -ENOMEM;
	}

	clk = FUNC5(&pdev->dev, "udc");
	if (FUNC0(clk)) {
		FUNC4(&pdev->dev, "failed to get clock\n");
		ret = FUNC1(clk);
		goto err_platform_device_put;
	}

	ret = FUNC3(clk);
	if (ret) {
		FUNC4(&pdev->dev, "failed to enable clock\n");
		goto err_platform_device_put;
	}

	musb->dev.parent		= &pdev->dev;

	glue->dev			= &pdev->dev;
	glue->musb			= musb;
	glue->clk			= clk;

	pdata->platform_ops		= &jz4740_musb_ops;

	FUNC12(pdev, glue);

	ret = FUNC9(musb, pdev->resource,
					    pdev->num_resources);
	if (ret) {
		FUNC4(&pdev->dev, "failed to add resources\n");
		goto err_clk_disable;
	}

	ret = FUNC8(musb, pdata, sizeof(*pdata));
	if (ret) {
		FUNC4(&pdev->dev, "failed to add platform_data\n");
		goto err_clk_disable;
	}

	ret = FUNC7(musb);
	if (ret) {
		FUNC4(&pdev->dev, "failed to register musb device\n");
		goto err_clk_disable;
	}

	return 0;

err_clk_disable:
	FUNC2(clk);
err_platform_device_put:
	FUNC11(musb);
	return ret;
}