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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  name; } ;
struct da850_pupd_data {int /*<<< orphan*/  pinctrl; TYPE_1__ desc; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  da850_pupd_confops ; 
 int /*<<< orphan*/  da850_pupd_pctlops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct da850_pupd_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,TYPE_1__*,struct da850_pupd_data*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct da850_pupd_data*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da850_pupd_data *data;
	struct resource *res;

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	data->base = FUNC4(dev, res);
	if (FUNC0(data->base)) {
		FUNC2(dev, "Could not map resource\n");
		return FUNC1(data->base);
	}

	data->desc.name = FUNC3(dev);
	data->desc.pctlops = &da850_pupd_pctlops;
	data->desc.confops = &da850_pupd_confops;
	data->desc.owner = THIS_MODULE;

	data->pinctrl = FUNC6(dev, &data->desc, data);
	if (FUNC0(data->pinctrl)) {
		FUNC2(dev, "Failed to register pinctrl\n");
		return FUNC1(data->pinctrl);
	}

	FUNC8(pdev, data);

	return 0;
}