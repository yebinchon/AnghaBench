#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ux500_glue {struct clk* clk; struct platform_device* musb; TYPE_2__* dev; } ;
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; struct TYPE_7__* parent; struct musb_hdrc_platform_data* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* resource; } ;
struct musb_hdrc_platform_data {int /*<<< orphan*/ * config; int /*<<< orphan*/ * platform_ops; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 struct musb_hdrc_platform_data* FUNC6 (TYPE_2__*) ; 
 struct clk* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct ux500_glue* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int,int) ; 
 int FUNC10 (struct platform_device*) ; 
 int FUNC11 (struct platform_device*,struct musb_hdrc_platform_data*,int) ; 
 int FUNC12 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct ux500_glue*) ; 
 int /*<<< orphan*/  ux500_musb_hdrc_config ; 
 struct musb_hdrc_platform_data* FUNC16 (struct platform_device*,struct device_node*) ; 
 int /*<<< orphan*/  ux500_ops ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct resource musb_resources[2];
	struct musb_hdrc_platform_data	*pdata = FUNC6(&pdev->dev);
	struct device_node		*np = pdev->dev.of_node;
	struct platform_device		*musb;
	struct ux500_glue		*glue;
	struct clk			*clk;
	int				ret = -ENOMEM;

	if (!pdata) {
		if (np) {
			pdata = FUNC16(pdev, np);
			if (!pdata)
				goto err0;

			pdev->dev.platform_data = pdata;
		} else {
			FUNC5(&pdev->dev, "no pdata or device tree found\n");
			goto err0;
		}
	}

	glue = FUNC8(&pdev->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		goto err0;

	musb = FUNC13("musb-hdrc", PLATFORM_DEVID_AUTO);
	if (!musb) {
		FUNC5(&pdev->dev, "failed to allocate musb device\n");
		goto err0;
	}

	clk = FUNC7(&pdev->dev, NULL);
	if (FUNC1(clk)) {
		FUNC5(&pdev->dev, "failed to get clock\n");
		ret = FUNC2(clk);
		goto err1;
	}

	ret = FUNC4(clk);
	if (ret) {
		FUNC5(&pdev->dev, "failed to enable clock\n");
		goto err1;
	}

	musb->dev.parent		= &pdev->dev;
	musb->dev.dma_mask		= &pdev->dev.coherent_dma_mask;
	musb->dev.coherent_dma_mask	= pdev->dev.coherent_dma_mask;

	glue->dev			= &pdev->dev;
	glue->musb			= musb;
	glue->clk			= clk;

	pdata->platform_ops		= &ux500_ops;
	pdata->config 			= &ux500_musb_hdrc_config;

	FUNC15(pdev, glue);

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

	ret = FUNC12(musb, musb_resources,
			FUNC0(musb_resources));
	if (ret) {
		FUNC5(&pdev->dev, "failed to add resources\n");
		goto err2;
	}

	ret = FUNC11(musb, pdata, sizeof(*pdata));
	if (ret) {
		FUNC5(&pdev->dev, "failed to add platform_data\n");
		goto err2;
	}

	ret = FUNC10(musb);
	if (ret) {
		FUNC5(&pdev->dev, "failed to register musb device\n");
		goto err2;
	}

	return 0;

err2:
	FUNC3(clk);

err1:
	FUNC14(musb);

err0:
	return ret;
}