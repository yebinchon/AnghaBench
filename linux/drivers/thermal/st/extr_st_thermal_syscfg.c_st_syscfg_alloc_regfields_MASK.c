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
struct st_thermal_sensor {int /*<<< orphan*/  pwr; TYPE_1__* cdata; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * reg_fields; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t TEMP_PWR ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct st_thermal_sensor *sensor)
{
	struct device *dev = sensor->dev;

	sensor->pwr = FUNC3(dev, sensor->regmap,
					sensor->cdata->reg_fields[TEMP_PWR]);

	if (FUNC0(sensor->pwr)) {
		FUNC2(dev, "failed to alloc syscfg regfields\n");
		return FUNC1(sensor->pwr);
	}

	return 0;
}