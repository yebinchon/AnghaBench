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
union power_supply_propval {int intval; } ;
struct ux500_charger {struct power_supply* psy; } ;
struct power_supply {TYPE_1__* desc; int /*<<< orphan*/  num_supplicants; scalar_t__ supplied_to; } ;
struct device {int dummy; } ;
struct ab8500_charger {int vbat; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int num_properties; int* properties; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 129 
#define  POWER_SUPPLY_TYPE_BATTERY 128 
 struct power_supply* FUNC0 (struct device*) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct power_supply*,int,union power_supply_propval*) ; 
 struct ab8500_charger* FUNC3 (struct ux500_charger*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct power_supply *psy;
	struct power_supply *ext = FUNC0(dev);
	const char **supplicants = (const char **)ext->supplied_to;
	struct ab8500_charger *di;
	union power_supply_propval ret;
	int j;
	struct ux500_charger *usb_chg;

	usb_chg = (struct ux500_charger *)data;
	psy = usb_chg->psy;

	di = FUNC3(usb_chg);

	/* For all psy where the driver name appears in any supplied_to */
	j = FUNC1(supplicants, ext->num_supplicants, psy->desc->name);
	if (j < 0)
		return 0;

	/* Go through all properties for the psy */
	for (j = 0; j < ext->desc->num_properties; j++) {
		enum power_supply_property prop;
		prop = ext->desc->properties[j];

		if (FUNC2(ext, prop, &ret))
			continue;

		switch (prop) {
		case POWER_SUPPLY_PROP_VOLTAGE_NOW:
			switch (ext->desc->type) {
			case POWER_SUPPLY_TYPE_BATTERY:
				di->vbat = ret.intval / 1000;
				break;
			default:
				break;
			}
			break;
		default:
			break;
		}
	}
	return 0;
}