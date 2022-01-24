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
struct gab {int /*<<< orphan*/ * channel; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct gab *adc_bat, enum power_supply_property psp,
		int *result)
{
	int ret;
	int chan_index;

	chan_index = FUNC0(psp);
	ret = FUNC1(adc_bat->channel[chan_index],
			result);
	if (ret < 0)
		FUNC2("read channel error\n");
	return ret;
}