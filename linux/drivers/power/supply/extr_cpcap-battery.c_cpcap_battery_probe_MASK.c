#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct power_supply_desc {char* name; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; } ;
struct power_supply_config {struct cpcap_battery_ddata* drv_data; int /*<<< orphan*/  of_node; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  ccm; } ;
struct cpcap_battery_ddata {int /*<<< orphan*/  active; TYPE_1__* dev; int /*<<< orphan*/  psy; TYPE_2__ config; int /*<<< orphan*/  reg; int /*<<< orphan*/  vendor; int /*<<< orphan*/  irq_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPCAP_REG_CCM ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cpcap_battery_get_property ; 
 int /*<<< orphan*/  cpcap_battery_id_table ; 
 int FUNC4 (struct cpcap_battery_ddata*) ; 
 int FUNC5 (struct platform_device*,struct cpcap_battery_ddata*) ; 
 int /*<<< orphan*/  cpcap_battery_props ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct power_supply_desc*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct cpcap_battery_ddata*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct power_supply_desc *psy_desc;
	struct cpcap_battery_ddata *ddata;
	const struct of_device_id *match;
	struct power_supply_config psy_cfg = {};
	int error;

	match = FUNC12(FUNC13(cpcap_battery_id_table),
				&pdev->dev);
	if (!match)
		return -EINVAL;

	if (!match->data) {
		FUNC7(&pdev->dev, "no configuration data found\n");

		return -ENODEV;
	}

	ddata = FUNC9(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC1(&ddata->irq_list);
	ddata->dev = &pdev->dev;
	FUNC11(&ddata->config, match->data, sizeof(ddata->config));

	ddata->reg = FUNC8(ddata->dev->parent, NULL);
	if (!ddata->reg)
		return -ENODEV;

	error = FUNC6(ddata->dev, ddata->reg, &ddata->vendor);
	if (error)
		return error;

	FUNC14(pdev, ddata);

	error = FUNC15(ddata->reg, CPCAP_REG_CCM,
				   0xffff, ddata->config.ccm);
	if (error)
		return error;

	error = FUNC5(pdev, ddata);
	if (error)
		return error;

	error = FUNC4(ddata);
	if (error)
		return error;

	psy_desc = FUNC9(ddata->dev, sizeof(*psy_desc), GFP_KERNEL);
	if (!psy_desc)
		return -ENOMEM;

	psy_desc->name = "battery",
	psy_desc->type = POWER_SUPPLY_TYPE_BATTERY,
	psy_desc->properties = cpcap_battery_props,
	psy_desc->num_properties = FUNC0(cpcap_battery_props),
	psy_desc->get_property = cpcap_battery_get_property,

	psy_cfg.of_node = pdev->dev.of_node;
	psy_cfg.drv_data = ddata;

	ddata->psy = FUNC10(ddata->dev, psy_desc,
						&psy_cfg);
	error = FUNC2(ddata->psy);
	if (error) {
		FUNC7(ddata->dev, "failed to register power supply\n");
		return error;
	}

	FUNC3(&ddata->active, 1);

	return 0;
}