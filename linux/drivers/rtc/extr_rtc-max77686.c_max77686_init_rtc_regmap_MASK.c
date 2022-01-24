#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct max77686_rtc_info {int rtc_irq; TYPE_2__* dev; int /*<<< orphan*/  rtc_irq_data; TYPE_1__* drv_data; scalar_t__ rtc_regmap; scalar_t__ rtc; scalar_t__ regmap; } ;
struct i2c_client {int irq; int /*<<< orphan*/  adapter; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  rtc_irq_chip; int /*<<< orphan*/  rtc_i2c_addr; scalar_t__ rtc_irq_from_platform; } ;

/* Variables and functions */
 int ENODEV ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MAX77686_INVALID_I2C_ADDR ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max77686_rtc_regmap_config ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct platform_device* FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(struct max77686_rtc_info *info)
{
	struct device *parent = info->dev->parent;
	struct i2c_client *parent_i2c = FUNC8(parent);
	int ret;

	if (info->drv_data->rtc_irq_from_platform) {
		struct platform_device *pdev = FUNC9(info->dev);

		info->rtc_irq = FUNC6(pdev, 0);
		if (info->rtc_irq < 0)
			return info->rtc_irq;
	} else {
		info->rtc_irq =  parent_i2c->irq;
	}

	info->regmap = FUNC3(parent, NULL);
	if (!info->regmap) {
		FUNC2(info->dev, "Failed to get rtc regmap\n");
		return -ENODEV;
	}

	if (info->drv_data->rtc_i2c_addr == MAX77686_INVALID_I2C_ADDR) {
		info->rtc_regmap = info->regmap;
		goto add_rtc_irq;
	}

	info->rtc = FUNC4(info->dev, parent_i2c->adapter,
					      info->drv_data->rtc_i2c_addr);
	if (FUNC0(info->rtc)) {
		FUNC2(info->dev, "Failed to allocate I2C device for RTC\n");
		return FUNC1(info->rtc);
	}

	info->rtc_regmap = FUNC5(info->rtc,
						&max77686_rtc_regmap_config);
	if (FUNC0(info->rtc_regmap)) {
		ret = FUNC1(info->rtc_regmap);
		FUNC2(info->dev, "Failed to allocate RTC regmap: %d\n", ret);
		return ret;
	}

add_rtc_irq:
	ret = FUNC7(info->rtc_regmap, info->rtc_irq,
				  IRQF_TRIGGER_FALLING | IRQF_ONESHOT |
				  IRQF_SHARED, 0, info->drv_data->rtc_irq_chip,
				  &info->rtc_irq_data);
	if (ret < 0) {
		FUNC2(info->dev, "Failed to add RTC irq chip: %d\n", ret);
		return ret;
	}

	return 0;
}