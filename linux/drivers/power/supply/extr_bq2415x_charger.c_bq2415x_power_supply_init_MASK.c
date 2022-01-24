#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {int /*<<< orphan*/  attr_grp; int /*<<< orphan*/  of_node; struct bq2415x_device* drv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct bq2415x_device {int /*<<< orphan*/  charger; int /*<<< orphan*/  model; TYPE_2__ charger_desc; TYPE_1__* dev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BQUNKNOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_USB ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bq2415x_chip_name ; 
 int FUNC3 (struct bq2415x_device*) ; 
 int FUNC4 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  bq2415x_power_supply_get_property ; 
 int /*<<< orphan*/  bq2415x_power_supply_props ; 
 int /*<<< orphan*/  bq2415x_sysfs_groups ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(struct bq2415x_device *bq)
{
	int ret;
	int chip;
	char revstr[8];
	struct power_supply_config psy_cfg = {
		.drv_data = bq,
		.of_node = bq->dev->of_node,
		.attr_grp = bq2415x_sysfs_groups,
	};

	bq->charger_desc.name = bq->name;
	bq->charger_desc.type = POWER_SUPPLY_TYPE_USB;
	bq->charger_desc.properties = bq2415x_power_supply_props;
	bq->charger_desc.num_properties =
			FUNC0(bq2415x_power_supply_props);
	bq->charger_desc.get_property = bq2415x_power_supply_get_property;

	ret = FUNC3(bq);
	if (ret < 0)
		chip = BQUNKNOWN;
	else
		chip = ret;

	ret = FUNC4(bq);
	if (ret < 0)
		FUNC11(revstr, "unknown");
	else
		FUNC10(revstr, "1.%d", ret);

	bq->model = FUNC7(GFP_KERNEL,
				"chip %s, revision %s, vender code %.3d",
				bq2415x_chip_name[chip], revstr,
				FUNC5(bq));
	if (!bq->model) {
		FUNC6(bq->dev, "failed to allocate model name\n");
		return -ENOMEM;
	}

	bq->charger = FUNC9(bq->dev, &bq->charger_desc,
					    &psy_cfg);
	if (FUNC1(bq->charger)) {
		FUNC8(bq->model);
		return FUNC2(bq->charger);
	}

	return 0;
}