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
struct TYPE_2__ {char* name; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; } ;
struct rx51_device_info {void* channel_temp; void* channel_bsi; void* channel_vbat; void* bat; TYPE_1__ bat_desc; int /*<<< orphan*/ * dev; } ;
struct power_supply_config {struct rx51_device_info* drv_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC2 (void*) ; 
 struct rx51_device_info* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct rx51_device_info*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  rx51_battery_get_property ; 
 int /*<<< orphan*/  rx51_battery_props ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct power_supply_config psy_cfg = {};
	struct rx51_device_info *di;
	int ret;

	di = FUNC3(&pdev->dev, sizeof(*di), GFP_KERNEL);
	if (!di)
		return -ENOMEM;

	FUNC6(pdev, di);

	di->dev = &pdev->dev;
	di->bat_desc.name = "rx51-battery";
	di->bat_desc.type = POWER_SUPPLY_TYPE_BATTERY;
	di->bat_desc.properties = rx51_battery_props;
	di->bat_desc.num_properties = FUNC0(rx51_battery_props);
	di->bat_desc.get_property = rx51_battery_get_property;

	psy_cfg.drv_data = di;

	di->channel_temp = FUNC4(di->dev, "temp");
	if (FUNC1(di->channel_temp)) {
		ret = FUNC2(di->channel_temp);
		goto error;
	}

	di->channel_bsi  = FUNC4(di->dev, "bsi");
	if (FUNC1(di->channel_bsi)) {
		ret = FUNC2(di->channel_bsi);
		goto error_channel_temp;
	}

	di->channel_vbat = FUNC4(di->dev, "vbat");
	if (FUNC1(di->channel_vbat)) {
		ret = FUNC2(di->channel_vbat);
		goto error_channel_bsi;
	}

	di->bat = FUNC7(di->dev, &di->bat_desc, &psy_cfg);
	if (FUNC1(di->bat)) {
		ret = FUNC2(di->bat);
		goto error_channel_vbat;
	}

	return 0;

error_channel_vbat:
	FUNC5(di->channel_vbat);
error_channel_bsi:
	FUNC5(di->channel_bsi);
error_channel_temp:
	FUNC5(di->channel_temp);
error:

	return ret;
}