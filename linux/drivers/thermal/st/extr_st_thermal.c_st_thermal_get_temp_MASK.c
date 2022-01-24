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
struct thermal_zone_device {struct st_thermal_sensor* devdata; } ;
struct st_thermal_sensor {TYPE_1__* cdata; int /*<<< orphan*/  temp_data; int /*<<< orphan*/  overflow; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ temp_adjust_val; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct thermal_zone_device *th, int *temperature)
{
	struct st_thermal_sensor *sensor = th->devdata;
	struct device *dev = sensor->dev;
	unsigned int temp;
	unsigned int overflow;
	int ret;

	ret = FUNC2(sensor->overflow, &overflow);
	if (ret)
		return ret;
	if (overflow)
		return -EIO;

	ret = FUNC2(sensor->temp_data, &temp);
	if (ret)
		return ret;

	temp += sensor->cdata->temp_adjust_val;
	temp = FUNC1(temp);

	FUNC0(dev, "temperature: %d\n", temp);

	*temperature = temp;

	return 0;
}