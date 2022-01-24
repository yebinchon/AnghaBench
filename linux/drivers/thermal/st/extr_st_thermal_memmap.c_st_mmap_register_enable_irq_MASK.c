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
struct st_thermal_sensor {int irq; struct device* dev; } ;
struct platform_device {int dummy; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct st_thermal_sensor*) ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct st_thermal_sensor*) ; 
 int /*<<< orphan*/  st_mmap_thermal_trip_handler ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct st_thermal_sensor *sensor)
{
	struct device *dev = sensor->dev;
	struct platform_device *pdev = FUNC4(dev);
	int ret;

	sensor->irq = FUNC2(pdev, 0);
	if (sensor->irq < 0) {
		FUNC0(dev, "failed to register IRQ\n");
		return sensor->irq;
	}

	ret = FUNC1(dev, sensor->irq,
					NULL, st_mmap_thermal_trip_handler,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					dev->driver->name, sensor);
	if (ret) {
		FUNC0(dev, "failed to register IRQ %d\n", sensor->irq);
		return ret;
	}

	return FUNC3(sensor);
}