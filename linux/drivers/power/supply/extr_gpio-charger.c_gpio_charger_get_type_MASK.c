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
struct device {int dummy; } ;
typedef  enum power_supply_type { ____Placeholder_power_supply_type } power_supply_type ;

/* Variables and functions */
 int POWER_SUPPLY_TYPE_BATTERY ; 
 int POWER_SUPPLY_TYPE_MAINS ; 
 int POWER_SUPPLY_TYPE_UNKNOWN ; 
 int POWER_SUPPLY_TYPE_UPS ; 
 int POWER_SUPPLY_TYPE_USB ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static enum power_supply_type FUNC3(struct device *dev)
{
	const char *chargetype;

	if (!FUNC1(dev, "charger-type", &chargetype)) {
		if (!FUNC2("unknown", chargetype))
			return POWER_SUPPLY_TYPE_UNKNOWN;
		if (!FUNC2("battery", chargetype))
			return POWER_SUPPLY_TYPE_BATTERY;
		if (!FUNC2("ups", chargetype))
			return POWER_SUPPLY_TYPE_UPS;
		if (!FUNC2("mains", chargetype))
			return POWER_SUPPLY_TYPE_MAINS;
		if (!FUNC2("usb-sdp", chargetype))
			return POWER_SUPPLY_TYPE_USB;
		if (!FUNC2("usb-dcp", chargetype))
			return POWER_SUPPLY_TYPE_USB;
		if (!FUNC2("usb-cdp", chargetype))
			return POWER_SUPPLY_TYPE_USB;
		if (!FUNC2("usb-aca", chargetype))
			return POWER_SUPPLY_TYPE_USB;
	}
	FUNC0(dev, "unknown charger type %s\n", chargetype);

	return POWER_SUPPLY_TYPE_UNKNOWN;
}