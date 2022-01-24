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
struct st_thermal_sensor {TYPE_1__* cdata; int /*<<< orphan*/  dcorrect; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  calibration_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct st_thermal_sensor *sensor)
{
	int ret;
	unsigned int val;
	struct device *dev = sensor->dev;

	/* Check if sensor calibration data is already written */
	ret = FUNC1(sensor->dcorrect, &val);
	if (ret) {
		FUNC0(dev, "failed to read calibration data\n");
		return ret;
	}

	if (!val) {
		/*
		 * Sensor calibration value not set by bootloader,
		 * default calibration data to be used
		 */
		ret = FUNC2(sensor->dcorrect,
					 sensor->cdata->calibration_val);
		if (ret)
			FUNC0(dev, "failed to set calibration data\n");
	}

	return ret;
}