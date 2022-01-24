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
struct sc27xx_fgu_data {int bat_present; void* gpiod; struct device* dev; void* battery; int /*<<< orphan*/  lock; void* charge_chan; void* channel; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; } ;
struct power_supply_config {struct device_node* of_node; struct sc27xx_fgu_data* drv_data; } ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,struct sc27xx_fgu_data*) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*) ; 
 struct sc27xx_fgu_data* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sc27xx_fgu_data*) ; 
 int FUNC11 (void*) ; 
 int FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct sc27xx_fgu_data*) ; 
 int /*<<< orphan*/  sc27xx_fgu_bat_detection ; 
 int /*<<< orphan*/  sc27xx_fgu_desc ; 
 int /*<<< orphan*/  sc27xx_fgu_disable ; 
 int FUNC16 (struct sc27xx_fgu_data*) ; 
 int /*<<< orphan*/  sc27xx_fgu_interrupt ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct power_supply_config fgu_cfg = { };
	struct sc27xx_fgu_data *data;
	int ret, irq;

	data = FUNC8(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->regmap = FUNC3(dev->parent, NULL);
	if (!data->regmap) {
		FUNC2(dev, "failed to get regmap\n");
		return -ENODEV;
	}

	ret = FUNC4(dev, "reg", &data->base);
	if (ret) {
		FUNC2(dev, "failed to get fgu address\n");
		return ret;
	}

	data->channel = FUNC7(dev, "bat-temp");
	if (FUNC0(data->channel)) {
		FUNC2(dev, "failed to get IIO channel\n");
		return FUNC1(data->channel);
	}

	data->charge_chan = FUNC7(dev, "charge-vol");
	if (FUNC0(data->charge_chan)) {
		FUNC2(dev, "failed to get charge IIO channel\n");
		return FUNC1(data->charge_chan);
	}

	data->gpiod = FUNC6(dev, "bat-detect", GPIOD_IN);
	if (FUNC0(data->gpiod)) {
		FUNC2(dev, "failed to get battery detection GPIO\n");
		return FUNC1(data->gpiod);
	}

	ret = FUNC11(data->gpiod);
	if (ret < 0) {
		FUNC2(dev, "failed to get gpio state\n");
		return ret;
	}

	data->bat_present = !!ret;
	FUNC13(&data->lock);
	data->dev = dev;
	FUNC15(pdev, data);

	fgu_cfg.drv_data = data;
	fgu_cfg.of_node = np;
	data->battery = FUNC9(dev, &sc27xx_fgu_desc,
						   &fgu_cfg);
	if (FUNC0(data->battery)) {
		FUNC2(dev, "failed to register power supply\n");
		return FUNC1(data->battery);
	}

	ret = FUNC16(data);
	if (ret) {
		FUNC2(dev, "failed to initialize fgu hardware\n");
		return ret;
	}

	ret = FUNC5(dev, sc27xx_fgu_disable, data);
	if (ret) {
		FUNC2(dev, "failed to add fgu disable action\n");
		return ret;
	}

	irq = FUNC14(pdev, 0);
	if (irq < 0) {
		FUNC2(dev, "no irq resource specified\n");
		return irq;
	}

	ret = FUNC10(data->dev, irq, NULL,
					sc27xx_fgu_interrupt,
					IRQF_NO_SUSPEND | IRQF_ONESHOT,
					pdev->name, data);
	if (ret) {
		FUNC2(data->dev, "failed to request fgu IRQ\n");
		return ret;
	}

	irq = FUNC12(data->gpiod);
	if (irq < 0) {
		FUNC2(dev, "failed to translate GPIO to IRQ\n");
		return irq;
	}

	ret = FUNC10(dev, irq, NULL,
					sc27xx_fgu_bat_detection,
					IRQF_ONESHOT | IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING,
					pdev->name, data);
	if (ret) {
		FUNC2(dev, "failed to request IRQ\n");
		return ret;
	}

	return 0;
}