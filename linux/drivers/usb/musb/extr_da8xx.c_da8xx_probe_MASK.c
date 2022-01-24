#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;
struct platform_device_info {int num_res; int size_data; struct musb_hdrc_platform_data* data; struct resource* res; TYPE_2__* parent; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* resource; } ;
struct musb_hdrc_platform_data {int /*<<< orphan*/ * platform_ops; int /*<<< orphan*/  power; int /*<<< orphan*/  mode; int /*<<< orphan*/ * config; } ;
struct device_node {int dummy; } ;
struct da8xx_glue {int /*<<< orphan*/  usb_phy; int /*<<< orphan*/  musb; struct clk* clk; TYPE_2__* dev; struct clk* phy; } ;
struct clk {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da8xx_auxdata_lookup ; 
 int /*<<< orphan*/  da8xx_config ; 
 struct platform_device_info da8xx_dev_info ; 
 int /*<<< orphan*/  da8xx_ops ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 struct musb_hdrc_platform_data* FUNC6 (TYPE_2__*) ; 
 struct clk* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct clk* FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct da8xx_glue*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct resource musb_resources[2];
	struct musb_hdrc_platform_data	*pdata = FUNC6(&pdev->dev);
	struct da8xx_glue		*glue;
	struct platform_device_info	pinfo;
	struct clk			*clk;
	struct device_node		*np = pdev->dev.of_node;
	int				ret;

	glue = FUNC8(&pdev->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		return -ENOMEM;

	clk = FUNC7(&pdev->dev, NULL);
	if (FUNC2(clk)) {
		FUNC5(&pdev->dev, "failed to get clock\n");
		return FUNC3(clk);
	}

	glue->phy = FUNC9(&pdev->dev, "usb-phy");
	if (FUNC2(glue->phy)) {
		if (FUNC3(glue->phy) != -EPROBE_DEFER)
			FUNC5(&pdev->dev, "failed to get phy\n");
		return FUNC3(glue->phy);
	}

	glue->dev			= &pdev->dev;
	glue->clk			= clk;

	if (FUNC1(CONFIG_OF) && np) {
		pdata = FUNC8(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
		if (!pdata)
			return -ENOMEM;

		pdata->config	= &da8xx_config;
		pdata->mode	= FUNC12(&pdev->dev);
		pdata->power	= FUNC10(&pdev->dev);
	}

	pdata->platform_ops		= &da8xx_ops;

	glue->usb_phy = FUNC16();
	ret = FUNC4(glue->usb_phy);
	if (ret) {
		FUNC5(&pdev->dev, "failed to register usb_phy\n");
		return ret;
	}
	FUNC15(pdev, glue);

	ret = FUNC13(pdev->dev.of_node, NULL,
				   da8xx_auxdata_lookup, &pdev->dev);
	if (ret)
		return ret;

	FUNC11(musb_resources, 0x00, sizeof(*musb_resources) *
			FUNC0(musb_resources));

	musb_resources[0].name = pdev->resource[0].name;
	musb_resources[0].start = pdev->resource[0].start;
	musb_resources[0].end = pdev->resource[0].end;
	musb_resources[0].flags = pdev->resource[0].flags;

	musb_resources[1].name = pdev->resource[1].name;
	musb_resources[1].start = pdev->resource[1].start;
	musb_resources[1].end = pdev->resource[1].end;
	musb_resources[1].flags = pdev->resource[1].flags;

	pinfo = da8xx_dev_info;
	pinfo.parent = &pdev->dev;
	pinfo.res = musb_resources;
	pinfo.num_res = FUNC0(musb_resources);
	pinfo.data = pdata;
	pinfo.size_data = sizeof(*pdata);

	glue->musb = FUNC14(&pinfo);
	ret = FUNC4(glue->musb);
	if (ret) {
		FUNC5(&pdev->dev, "failed to register musb device: %d\n", ret);
		FUNC17(glue->usb_phy);
	}

	return ret;
}