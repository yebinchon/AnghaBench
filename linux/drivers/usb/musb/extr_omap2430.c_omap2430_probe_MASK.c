#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; struct TYPE_9__* parent; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* resource; } ;
struct omap_musb_board_data {int /*<<< orphan*/  interface_type; } ;
struct omap2430_glue {TYPE_2__* dev; int /*<<< orphan*/  omap_musb_mailbox_work; TYPE_2__* control_otghs; int /*<<< orphan*/  status; struct platform_device* musb; } ;
struct musb_hdrc_platform_data {int /*<<< orphan*/ * platform_ops; struct musb_hdrc_config* config; struct omap_musb_board_data* board_data; int /*<<< orphan*/  power; int /*<<< orphan*/  mode; } ;
struct musb_hdrc_config {int multipoint; int /*<<< orphan*/  ram_bits; int /*<<< orphan*/  num_eps; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB_UNKNOWN ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 struct omap2430_glue* _glue ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 struct musb_hdrc_platform_data* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int,int) ; 
 struct platform_device* FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  omap2430_dmamask ; 
 int /*<<< orphan*/  omap2430_ops ; 
 int /*<<< orphan*/  omap_musb_mailbox_work ; 
 int FUNC10 (struct platform_device*) ; 
 int FUNC11 (struct platform_device*,struct musb_hdrc_platform_data*,int) ; 
 int FUNC12 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct omap2430_glue*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct resource			musb_resources[3];
	struct musb_hdrc_platform_data	*pdata = FUNC4(&pdev->dev);
	struct omap_musb_board_data	*data;
	struct platform_device		*musb;
	struct omap2430_glue		*glue;
	struct device_node		*np = pdev->dev.of_node;
	struct musb_hdrc_config		*config;
	struct device_node		*control_node;
	struct platform_device		*control_pdev;
	int				ret = -ENOMEM, val;

	if (!np)
		return -ENODEV;

	glue = FUNC5(&pdev->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		goto err0;

	musb = FUNC13("musb-hdrc", PLATFORM_DEVID_AUTO);
	if (!musb) {
		FUNC3(&pdev->dev, "failed to allocate musb device\n");
		goto err0;
	}

	musb->dev.parent		= &pdev->dev;
	musb->dev.dma_mask		= &omap2430_dmamask;
	musb->dev.coherent_dma_mask	= omap2430_dmamask;

	glue->dev			= &pdev->dev;
	glue->musb			= musb;
	glue->status			= MUSB_UNKNOWN;
	glue->control_otghs = FUNC1(-ENODEV);

	pdata = FUNC5(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		goto err2;

	data = FUNC5(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		goto err2;

	config = FUNC5(&pdev->dev, sizeof(*config), GFP_KERNEL);
	if (!config)
		goto err2;

	FUNC9(np, "mode", (u32 *)&pdata->mode);
	FUNC9(np, "interface-type",
			(u32 *)&data->interface_type);
	FUNC9(np, "num-eps", (u32 *)&config->num_eps);
	FUNC9(np, "ram-bits", (u32 *)&config->ram_bits);
	FUNC9(np, "power", (u32 *)&pdata->power);

	ret = FUNC9(np, "multipoint", &val);
	if (!ret && val)
		config->multipoint = true;

	pdata->board_data	= data;
	pdata->config		= config;

	control_node = FUNC8(np, "ctrl-module", 0);
	if (control_node) {
		control_pdev = FUNC7(control_node);
		if (!control_pdev) {
			FUNC3(&pdev->dev, "Failed to get control device\n");
			ret = -EINVAL;
			goto err2;
		}
		glue->control_otghs = &control_pdev->dev;
	}

	pdata->platform_ops		= &omap2430_ops;

	FUNC15(pdev, glue);

	/*
	 * REVISIT if we ever have two instances of the wrapper, we will be
	 * in big trouble
	 */
	_glue	= glue;

	FUNC2(&glue->omap_musb_mailbox_work, omap_musb_mailbox_work);

	FUNC6(musb_resources, 0x00, sizeof(*musb_resources) *
			FUNC0(musb_resources));

	musb_resources[0].name = pdev->resource[0].name;
	musb_resources[0].start = pdev->resource[0].start;
	musb_resources[0].end = pdev->resource[0].end;
	musb_resources[0].flags = pdev->resource[0].flags;

	musb_resources[1].name = pdev->resource[1].name;
	musb_resources[1].start = pdev->resource[1].start;
	musb_resources[1].end = pdev->resource[1].end;
	musb_resources[1].flags = pdev->resource[1].flags;

	musb_resources[2].name = pdev->resource[2].name;
	musb_resources[2].start = pdev->resource[2].start;
	musb_resources[2].end = pdev->resource[2].end;
	musb_resources[2].flags = pdev->resource[2].flags;

	ret = FUNC12(musb, musb_resources,
			FUNC0(musb_resources));
	if (ret) {
		FUNC3(&pdev->dev, "failed to add resources\n");
		goto err2;
	}

	ret = FUNC11(musb, pdata, sizeof(*pdata));
	if (ret) {
		FUNC3(&pdev->dev, "failed to add platform_data\n");
		goto err2;
	}

	FUNC17(glue->dev);

	ret = FUNC10(musb);
	if (ret) {
		FUNC3(&pdev->dev, "failed to register musb device\n");
		goto err3;
	}

	return 0;

err3:
	FUNC16(glue->dev);

err2:
	FUNC14(musb);

err0:
	return ret;
}