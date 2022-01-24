#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device {int id; scalar_t__ of_node; } ;
struct w1_slave {struct ds2760_device_info* family_data; struct device dev; } ;
struct power_supply_config {scalar_t__ of_node; struct ds2760_device_info* drv_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  external_power_changed; int /*<<< orphan*/  set_charged; int /*<<< orphan*/  property_is_writeable; int /*<<< orphan*/  set_property; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; } ;
struct ds2760_device_info {char* raw; int /*<<< orphan*/  bat; TYPE_1__ pm_notifier; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  monitor_wqueue; int /*<<< orphan*/  set_charged_work; struct device* dev; TYPE_2__ bat_desc; int /*<<< orphan*/  charge_status; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char DS2760_STATUS_PMOD ; 
 size_t DS2760_STATUS_REG ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int cache_time ; 
 scalar_t__ current_accum ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct ds2760_device_info* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds2760_battery_external_power_changed ; 
 int /*<<< orphan*/  ds2760_battery_get_property ; 
 int /*<<< orphan*/  ds2760_battery_property_is_writeable ; 
 int /*<<< orphan*/  ds2760_battery_props ; 
 int /*<<< orphan*/  FUNC7 (struct ds2760_device_info*) ; 
 int /*<<< orphan*/  ds2760_battery_set_charged ; 
 int /*<<< orphan*/  ds2760_battery_set_charged_work ; 
 int /*<<< orphan*/  FUNC8 (struct ds2760_device_info*,scalar_t__) ; 
 int /*<<< orphan*/  ds2760_battery_set_property ; 
 int /*<<< orphan*/  ds2760_battery_work ; 
 int /*<<< orphan*/  FUNC9 (struct ds2760_device_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ds2760_device_info*,char) ; 
 int /*<<< orphan*/  ds2760_pm_notifier ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int*) ; 
 int pmod_enabled ; 
 int /*<<< orphan*/  FUNC13 (struct device*,TYPE_2__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int rated_capacity ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC18(struct w1_slave *sl)
{
	struct power_supply_config psy_cfg = {};
	struct ds2760_device_info *di;
	struct device *dev = &sl->dev;
	int retval = 0;
	char name[32];
	char status;

	di = FUNC6(dev, sizeof(*di), GFP_KERNEL);
	if (!di) {
		retval = -ENOMEM;
		goto di_alloc_failed;
	}

	FUNC17(name, sizeof(name), "ds2760-battery.%d", dev->id);

	di->dev				= dev;
	di->bat_desc.name		= name;
	di->bat_desc.type		= POWER_SUPPLY_TYPE_BATTERY;
	di->bat_desc.properties		= ds2760_battery_props;
	di->bat_desc.num_properties	= FUNC0(ds2760_battery_props);
	di->bat_desc.get_property	= ds2760_battery_get_property;
	di->bat_desc.set_property	= ds2760_battery_set_property;
	di->bat_desc.property_is_writeable =
				  ds2760_battery_property_is_writeable;
	di->bat_desc.set_charged	= ds2760_battery_set_charged;
	di->bat_desc.external_power_changed =
				  ds2760_battery_external_power_changed;

	psy_cfg.drv_data = di;

	if (dev->of_node) {
		u32 tmp;

		psy_cfg.of_node = dev->of_node;

		if (!FUNC11(dev->of_node, "maxim,pmod-enabled"))
			pmod_enabled = true;

		if (!FUNC12(dev->of_node,
					  "maxim,cache-time-ms", &tmp))
			cache_time = tmp;

		if (!FUNC12(dev->of_node,
					  "rated-capacity-microamp-hours",
					  &tmp))
			rated_capacity = tmp / 10; /* property is in mAh */
	}

	di->charge_status = POWER_SUPPLY_STATUS_UNKNOWN;

	sl->family_data = di;

	/* enable sleep mode feature */
	FUNC7(di);
	status = di->raw[DS2760_STATUS_REG];
	if (pmod_enabled)
		status |= DS2760_STATUS_PMOD;
	else
		status &= ~DS2760_STATUS_PMOD;

	FUNC10(di, status);

	/* set rated capacity from module param or device tree */
	if (rated_capacity)
		FUNC9(di, rated_capacity);

	/* set current accumulator if given as parameter.
	 * this should only be done for bootstrapping the value */
	if (current_accum)
		FUNC8(di, current_accum);

	di->bat = FUNC13(dev, &di->bat_desc, &psy_cfg);
	if (FUNC2(di->bat)) {
		FUNC5(di->dev, "failed to register battery\n");
		retval = FUNC3(di->bat);
		goto batt_failed;
	}

	FUNC1(&di->monitor_work, ds2760_battery_work);
	FUNC1(&di->set_charged_work,
			  ds2760_battery_set_charged_work);
	di->monitor_wqueue = FUNC4(name, WQ_MEM_RECLAIM);
	if (!di->monitor_wqueue) {
		retval = -ESRCH;
		goto workqueue_failed;
	}
	FUNC15(di->monitor_wqueue, &di->monitor_work, HZ * 1);

	di->pm_notifier.notifier_call = ds2760_pm_notifier;
	FUNC16(&di->pm_notifier);

	goto success;

workqueue_failed:
	FUNC14(di->bat);
batt_failed:
di_alloc_failed:
success:
	return retval;
}