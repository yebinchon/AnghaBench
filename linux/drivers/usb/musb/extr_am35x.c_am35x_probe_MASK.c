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
struct platform_device_info {int size_data; struct musb_hdrc_platform_data* data; int /*<<< orphan*/  num_res; int /*<<< orphan*/  res; int /*<<< orphan*/ * parent; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;
struct musb_hdrc_platform_data {int /*<<< orphan*/ * platform_ops; } ;
struct clk {int /*<<< orphan*/  dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;
struct am35x_glue {struct platform_device* phy; struct platform_device* musb; struct platform_device* clk; struct platform_device* phy_clk; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device_info am35x_dev_info ; 
 int /*<<< orphan*/  am35x_ops ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 struct musb_hdrc_platform_data* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct am35x_glue*) ; 
 struct am35x_glue* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC10 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct am35x_glue*) ; 
 struct platform_device* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct musb_hdrc_platform_data	*pdata = FUNC7(&pdev->dev);
	struct platform_device		*musb;
	struct am35x_glue		*glue;
	struct platform_device_info	pinfo;
	struct clk			*phy_clk;
	struct clk			*clk;

	int				ret = -ENOMEM;

	glue = FUNC9(sizeof(*glue), GFP_KERNEL);
	if (!glue)
		goto err0;

	phy_clk = FUNC4(&pdev->dev, "fck");
	if (FUNC0(phy_clk)) {
		FUNC6(&pdev->dev, "failed to get PHY clock\n");
		ret = FUNC1(phy_clk);
		goto err3;
	}

	clk = FUNC4(&pdev->dev, "ick");
	if (FUNC0(clk)) {
		FUNC6(&pdev->dev, "failed to get clock\n");
		ret = FUNC1(clk);
		goto err4;
	}

	ret = FUNC3(phy_clk);
	if (ret) {
		FUNC6(&pdev->dev, "failed to enable PHY clock\n");
		goto err5;
	}

	ret = FUNC3(clk);
	if (ret) {
		FUNC6(&pdev->dev, "failed to enable clock\n");
		goto err6;
	}

	glue->dev			= &pdev->dev;
	glue->phy_clk			= phy_clk;
	glue->clk			= clk;

	pdata->platform_ops		= &am35x_ops;

	glue->phy = FUNC12();
	if (FUNC0(glue->phy)) {
		ret = FUNC1(glue->phy);
		goto err7;
	}
	FUNC11(pdev, glue);

	pinfo = am35x_dev_info;
	pinfo.parent = &pdev->dev;
	pinfo.res = pdev->resource;
	pinfo.num_res = pdev->num_resources;
	pinfo.data = pdata;
	pinfo.size_data = sizeof(*pdata);

	glue->musb = musb = FUNC10(&pinfo);
	if (FUNC0(musb)) {
		ret = FUNC1(musb);
		FUNC6(&pdev->dev, "failed to register musb device: %d\n", ret);
		goto err8;
	}

	return 0;

err8:
	FUNC13(glue->phy);

err7:
	FUNC2(clk);

err6:
	FUNC2(phy_clk);

err5:
	FUNC5(clk);

err4:
	FUNC5(phy_clk);

err3:
	FUNC8(glue);

err0:
	return ret;
}