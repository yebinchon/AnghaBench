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
struct st_thermal_sensor {int /*<<< orphan*/  clk; TYPE_1__* ops; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* power_ctrl ) (struct st_thermal_sensor*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct st_thermal_sensor*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct st_thermal_sensor *sensor)
{
	int ret;
	struct device *dev = sensor->dev;

	ret = FUNC1(sensor->clk);
	if (ret) {
		FUNC2(dev, "failed to enable clk\n");
		return ret;
	}

	ret = sensor->ops->power_ctrl(sensor, POWER_ON);
	if (ret) {
		FUNC2(dev, "failed to power on sensor\n");
		FUNC0(sensor->clk);
	}

	return ret;
}