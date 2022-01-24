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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hisi_thermal_sensor {int /*<<< orphan*/  irq_name; } ;
struct hisi_thermal_data {int nr_sensors; TYPE_1__* ops; struct hisi_thermal_sensor* sensor; int /*<<< orphan*/  regs; struct platform_device* pdev; } ;
struct TYPE_2__ {int (* probe ) (struct hisi_thermal_data*) ;int (* enable_sensor ) (struct hisi_thermal_sensor*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct hisi_thermal_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_thermal_sensor*) ; 
 int /*<<< orphan*/  hisi_thermal_alarm_irq_thread ; 
 int FUNC6 (struct platform_device*,struct hisi_thermal_sensor*) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_thermal_sensor*,int) ; 
 TYPE_1__* FUNC8 (struct device*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct hisi_thermal_data*) ; 
 int FUNC12 (struct hisi_thermal_data*) ; 
 int FUNC13 (struct hisi_thermal_sensor*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct hisi_thermal_data *data;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int i, ret;

	data = FUNC4(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->pdev = pdev;
	FUNC11(pdev, data);
	data->ops = FUNC8(dev);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	data->regs = FUNC3(dev, res);
	if (FUNC0(data->regs)) {
		FUNC2(dev, "failed to get io address\n");
		return FUNC1(data->regs);
	}

	ret = data->ops->probe(data);
	if (ret)
		return ret;

	for (i = 0; i < data->nr_sensors; i++) {
		struct hisi_thermal_sensor *sensor = &data->sensor[i];

		ret = FUNC6(pdev, sensor);
		if (ret) {
			FUNC2(dev, "failed to register thermal sensor: %d\n",
				ret);
			return ret;
		}

		ret = FUNC9(pdev, 0);
		if (ret < 0)
			return ret;

		ret = FUNC5(dev, ret, NULL,
						hisi_thermal_alarm_irq_thread,
						IRQF_ONESHOT, sensor->irq_name,
						sensor);
		if (ret < 0) {
			FUNC2(dev, "Failed to request alarm irq: %d\n", ret);
			return ret;
		}

		ret = data->ops->enable_sensor(sensor);
		if (ret) {
			FUNC2(dev, "Failed to setup the sensor: %d\n", ret);
			return ret;
		}

		FUNC7(sensor, true);
	}

	return 0;
}