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
struct st_thermal_sensor {int /*<<< orphan*/  int_enable; TYPE_1__* cdata; int /*<<< orphan*/  int_thresh_hi; } ;
struct TYPE_2__ {int crit_temp; int temp_adjust_val; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct st_thermal_sensor *sensor)
{
	int ret;

	/* Set upper critical threshold */
	ret = FUNC0(sensor->int_thresh_hi,
				 sensor->cdata->crit_temp -
				 sensor->cdata->temp_adjust_val);
	if (ret)
		return ret;

	return FUNC0(sensor->int_enable, 1);
}