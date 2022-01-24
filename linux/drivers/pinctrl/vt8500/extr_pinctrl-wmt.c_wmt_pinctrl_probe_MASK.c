#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ngpio; int /*<<< orphan*/  of_node; TYPE_6__* parent; } ;
struct wmt_pinctrl_data {int nbanks; TYPE_1__ gpio_chip; TYPE_6__* dev; int /*<<< orphan*/  pctl_dev; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_2__*,struct wmt_pinctrl_data*) ; 
 int FUNC7 (TYPE_1__*,struct wmt_pinctrl_data*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct wmt_pinctrl_data*) ; 
 TYPE_2__ wmt_desc ; 
 TYPE_1__ wmt_gpio_chip ; 

int FUNC12(struct platform_device *pdev,
		      struct wmt_pinctrl_data *data)
{
	int err;
	struct resource *res;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	data->base = FUNC5(&pdev->dev, res);
	if (FUNC0(data->base))
		return FUNC1(data->base);

	wmt_desc.pins = data->pins;
	wmt_desc.npins = data->npins;

	data->gpio_chip = wmt_gpio_chip;
	data->gpio_chip.parent = &pdev->dev;
	data->gpio_chip.of_node = pdev->dev.of_node;
	data->gpio_chip.ngpio = data->nbanks * 32;

	FUNC11(pdev, data);

	data->dev = &pdev->dev;

	data->pctl_dev = FUNC6(&pdev->dev, &wmt_desc, data);
	if (FUNC0(data->pctl_dev)) {
		FUNC2(&pdev->dev, "Failed to register pinctrl\n");
		return FUNC1(data->pctl_dev);
	}

	err = FUNC7(&data->gpio_chip, data);
	if (err) {
		FUNC2(&pdev->dev, "could not add GPIO chip\n");
		return err;
	}

	err = FUNC8(&data->gpio_chip, FUNC4(data->dev),
				     0, 0, data->nbanks * 32);
	if (err)
		goto fail_range;

	FUNC3(&pdev->dev, "Pin controller initialized\n");

	return 0;

fail_range:
	FUNC9(&data->gpio_chip);
	return err;
}