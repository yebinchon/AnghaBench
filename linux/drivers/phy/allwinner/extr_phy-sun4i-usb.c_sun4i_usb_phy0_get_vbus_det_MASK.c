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
union power_supply_propval {int intval; } ;
struct sun4i_usb_phy_data {scalar_t__ vbus_power_supply; scalar_t__ vbus_det_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_SUPPLY_PROP_PRESENT ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,union power_supply_propval*) ; 

__attribute__((used)) static int FUNC2(struct sun4i_usb_phy_data *data)
{
	if (data->vbus_det_gpio)
		return FUNC0(data->vbus_det_gpio);

	if (data->vbus_power_supply) {
		union power_supply_propval val;
		int r;

		r = FUNC1(data->vbus_power_supply,
					      POWER_SUPPLY_PROP_PRESENT, &val);
		if (r == 0)
			return val.intval;
	}

	/* Fallback: report vbus as high */
	return 1;
}