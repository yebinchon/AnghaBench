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
struct st_thermal_sensor {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; TYPE_1__* cdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  sys_compat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct st_thermal_sensor *sensor)
{
	sensor->regmap =
		FUNC3(sensor->cdata->sys_compat);
	if (FUNC0(sensor->regmap)) {
		FUNC2(sensor->dev, "failed to find syscfg regmap\n");
		return FUNC1(sensor->regmap);
	}

	return 0;
}