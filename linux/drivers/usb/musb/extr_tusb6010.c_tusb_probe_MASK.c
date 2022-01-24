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
struct tusb6010_glue {struct platform_device* musb; int /*<<< orphan*/ * dev; } ;
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;
struct platform_device_info {int num_res; int size_data; struct musb_hdrc_platform_data* data; struct resource* res; int /*<<< orphan*/ * parent; } ;
struct platform_device {int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct musb_hdrc_platform_data {int /*<<< orphan*/ * platform_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct musb_hdrc_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 struct tusb6010_glue* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int,int) ; 
 struct platform_device* FUNC7 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct tusb6010_glue*) ; 
 struct platform_device_info tusb_dev_info ; 
 int /*<<< orphan*/  tusb_ops ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct resource musb_resources[3];
	struct musb_hdrc_platform_data	*pdata = FUNC4(&pdev->dev);
	struct platform_device		*musb;
	struct tusb6010_glue		*glue;
	struct platform_device_info	pinfo;
	int				ret;

	glue = FUNC5(&pdev->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		return -ENOMEM;

	glue->dev			= &pdev->dev;

	pdata->platform_ops		= &tusb_ops;

	FUNC9();
	FUNC8(pdev, glue);

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

	pinfo = tusb_dev_info;
	pinfo.parent = &pdev->dev;
	pinfo.res = musb_resources;
	pinfo.num_res = FUNC0(musb_resources);
	pinfo.data = pdata;
	pinfo.size_data = sizeof(*pdata);

	glue->musb = musb = FUNC7(&pinfo);
	if (FUNC1(musb)) {
		ret = FUNC2(musb);
		FUNC3(&pdev->dev, "failed to register musb device: %d\n", ret);
		return ret;
	}

	return 0;
}