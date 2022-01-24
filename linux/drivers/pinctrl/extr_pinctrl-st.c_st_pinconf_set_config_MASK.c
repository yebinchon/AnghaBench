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
struct st_pio_control {struct regmap_field* od; struct regmap_field* pu; struct regmap_field* oe; } ;
struct regmap_field {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 unsigned long ST_PINCONF_OD ; 
 unsigned long ST_PINCONF_OE ; 
 unsigned long ST_PINCONF_PU ; 
 int /*<<< orphan*/  FUNC1 (struct regmap_field*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap_field*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct st_pio_control *pc,
				int pin, unsigned long config)
{
	struct regmap_field *output_enable = pc->oe;
	struct regmap_field *pull_up = pc->pu;
	struct regmap_field *open_drain = pc->od;
	unsigned int oe_value, pu_value, od_value;
	unsigned long mask = FUNC0(pin);

	if (output_enable) {
		FUNC1(output_enable, &oe_value);
		oe_value &= ~mask;
		if (config & ST_PINCONF_OE)
			oe_value |= mask;
		FUNC2(output_enable, oe_value);
	}

	if (pull_up) {
		FUNC1(pull_up, &pu_value);
		pu_value &= ~mask;
		if (config & ST_PINCONF_PU)
			pu_value |= mask;
		FUNC2(pull_up, pu_value);
	}

	if (open_drain) {
		FUNC1(open_drain, &od_value);
		od_value &= ~mask;
		if (config & ST_PINCONF_OD)
			od_value |= mask;
		FUNC2(open_drain, od_value);
	}
}