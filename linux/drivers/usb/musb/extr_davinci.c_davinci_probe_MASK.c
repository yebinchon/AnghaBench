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
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;
struct platform_device_info {int num_res; int size_data; struct musb_hdrc_platform_data* data; struct resource* res; int /*<<< orphan*/ * parent; } ;
struct platform_device {int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct musb_hdrc_platform_data {int /*<<< orphan*/ * platform_ops; } ;
struct davinci_glue {struct platform_device* musb; struct platform_device* clk; int /*<<< orphan*/ * dev; } ;
struct clk {int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*) ; 
 struct platform_device_info davinci_dev_info ; 
 int /*<<< orphan*/  davinci_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct musb_hdrc_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct davinci_glue* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int,int) ; 
 struct platform_device* FUNC10 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct davinci_glue*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct resource			musb_resources[3];
	struct musb_hdrc_platform_data	*pdata = FUNC6(&pdev->dev);
	struct platform_device		*musb;
	struct davinci_glue		*glue;
	struct platform_device_info	pinfo;
	struct clk			*clk;

	int				ret = -ENOMEM;

	glue = FUNC8(&pdev->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		goto err0;

	clk = FUNC7(&pdev->dev, "usb");
	if (FUNC1(clk)) {
		FUNC5(&pdev->dev, "failed to get clock\n");
		ret = FUNC2(clk);
		goto err0;
	}

	ret = FUNC4(clk);
	if (ret) {
		FUNC5(&pdev->dev, "failed to enable clock\n");
		goto err0;
	}

	glue->dev			= &pdev->dev;
	glue->clk			= clk;

	pdata->platform_ops		= &davinci_ops;

	FUNC12();
	FUNC11(pdev, glue);

	FUNC9(musb_resources, 0x00, sizeof(*musb_resources) *
			FUNC0(musb_resources));

	musb_resources[0].name = pdev->resource[0].name;
	musb_resources[0].start = pdev->resource[0].start;
	musb_resources[0].end = pdev->resource[0].end;
	musb_resources[0].flags = pdev->resource[0].flags;

	musb_resources[1].name = pdev->resource[1].name;
	musb_resources[1].start = pdev->resource[1].start;
	musb_resources[1].end = pdev->resource[1].end;
	musb_resources[1].flags = pdev->resource[1].flags;

	/*
	 * For DM6467 3 resources are passed. A placeholder for the 3rd
	 * resource is always there, so it's safe to always copy it...
	 */
	musb_resources[2].name = pdev->resource[2].name;
	musb_resources[2].start = pdev->resource[2].start;
	musb_resources[2].end = pdev->resource[2].end;
	musb_resources[2].flags = pdev->resource[2].flags;

	pinfo = davinci_dev_info;
	pinfo.parent = &pdev->dev;
	pinfo.res = musb_resources;
	pinfo.num_res = FUNC0(musb_resources);
	pinfo.data = pdata;
	pinfo.size_data = sizeof(*pdata);

	glue->musb = musb = FUNC10(&pinfo);
	if (FUNC1(musb)) {
		ret = FUNC2(musb);
		FUNC5(&pdev->dev, "failed to register musb device: %d\n", ret);
		goto err1;
	}

	return 0;

err1:
	FUNC3(clk);

err0:
	return ret;
}