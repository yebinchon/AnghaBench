#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {int dummy; } ;
struct TYPE_13__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct armada_thermal_sensor {int id; struct armada_thermal_priv* priv; } ;
struct armada_thermal_priv {int current_channel; int /*<<< orphan*/  overheat_sensor; struct armada_thermal_data* data; int /*<<< orphan*/  zone_name; int /*<<< orphan*/  update_lock; TYPE_3__* dev; } ;
struct armada_thermal_data {int cpu_nr; int /*<<< orphan*/  (* init ) (struct platform_device*,struct armada_thermal_priv*) ;} ;
struct TYPE_12__ {struct armada_thermal_priv* priv; struct thermal_zone_device* tz; } ;
struct armada_drvdata {TYPE_2__ data; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  LEGACY ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  SYSCON ; 
 int /*<<< orphan*/  FUNC2 (struct armada_thermal_priv*,struct thermal_zone_device*,int) ; 
 int /*<<< orphan*/  armada_overheat_isr ; 
 int /*<<< orphan*/  armada_overheat_isr_thread ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct armada_thermal_priv*) ; 
 int /*<<< orphan*/  armada_thermal_id_table ; 
 int FUNC4 (struct platform_device*,struct armada_thermal_priv*) ; 
 int FUNC5 (struct platform_device*,struct armada_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct armada_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct armada_thermal_sensor*) ; 
 void* FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct armada_thermal_priv*) ; 
 struct thermal_zone_device* FUNC13 (TYPE_3__*,int,struct armada_thermal_sensor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  legacy_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC15 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  of_ops ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct armada_drvdata*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct armada_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct armada_thermal_priv*) ; 
 struct thermal_zone_device* FUNC20 (int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct armada_thermal_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct thermal_zone_device *tz;
	struct armada_thermal_sensor *sensor;
	struct armada_drvdata *drvdata;
	const struct of_device_id *match;
	struct armada_thermal_priv *priv;
	int sensor_id, irq;
	int ret;

	match = FUNC15(armada_thermal_id_table, &pdev->dev);
	if (!match)
		return -ENODEV;

	priv = FUNC11(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	drvdata = FUNC11(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	priv->dev = &pdev->dev;
	priv->data = (struct armada_thermal_data *)match->data;

	FUNC14(&priv->update_lock);

	/*
	 * Legacy DT bindings only described "control1" register (also referred
	 * as "control MSB" on old documentation). Then, bindings moved to cover
	 * "control0/control LSB" and "control1/control MSB" registers within
	 * the same resource, which was then of size 8 instead of 4.
	 *
	 * The logic of defining sporadic registers is broken. For instance, it
	 * blocked the addition of the overheat interrupt feature that needed
	 * another resource somewhere else in the same memory area. One solution
	 * is to define an overall system controller and put the thermal node
	 * into it, which requires the use of regmaps across all the driver.
	 */
	if (FUNC0(FUNC20(pdev->dev.parent->of_node))) {
		/* Ensure device name is correct for the thermal core */
		FUNC3(pdev, priv);

		ret = FUNC4(pdev, priv);
		if (ret)
			return ret;

		priv->data->init(pdev, priv);

		/* Wait the sensors to be valid */
		FUNC6(priv);

		tz = FUNC21(priv->zone_name, 0, 0, priv,
						  &legacy_ops, NULL, 0, 0);
		if (FUNC0(tz)) {
			FUNC7(&pdev->dev,
				"Failed to register thermal zone device\n");
			return FUNC1(tz);
		}

		drvdata->type = LEGACY;
		drvdata->data.tz = tz;
		FUNC17(pdev, drvdata);

		return 0;
	}

	ret = FUNC5(pdev, priv);
	if (ret)
		return ret;

	priv->current_channel = -1;
	priv->data->init(pdev, priv);
	drvdata->type = SYSCON;
	drvdata->data.priv = priv;
	FUNC17(pdev, drvdata);

	irq = FUNC16(pdev, 0);
	if (irq == -EPROBE_DEFER)
		return irq;

	/* The overheat interrupt feature is not mandatory */
	if (irq > 0) {
		ret = FUNC12(&pdev->dev, irq,
						armada_overheat_isr,
						armada_overheat_isr_thread,
						0, NULL, priv);
		if (ret) {
			FUNC7(&pdev->dev, "Cannot request threaded IRQ %d\n",
				irq);
			return ret;
		}
	}

	/*
	 * There is one channel for the IC and one per CPU (if any), each
	 * channel has one sensor.
	 */
	for (sensor_id = 0; sensor_id <= priv->data->cpu_nr; sensor_id++) {
		sensor = FUNC11(&pdev->dev,
				      sizeof(struct armada_thermal_sensor),
				      GFP_KERNEL);
		if (!sensor)
			return -ENOMEM;

		/* Register the sensor */
		sensor->priv = priv;
		sensor->id = sensor_id;
		tz = FUNC13(&pdev->dev,
							  sensor->id, sensor,
							  &of_ops);
		if (FUNC0(tz)) {
			FUNC8(&pdev->dev, "Thermal sensor %d unavailable\n",
				 sensor_id);
			FUNC10(&pdev->dev, sensor);
			continue;
		}

		/*
		 * The first channel that has a critical trip point registered
		 * in the DT will serve as interrupt source. Others possible
		 * critical trip points will simply be ignored by the driver.
		 */
		if (irq > 0 && !priv->overheat_sensor)
			FUNC2(priv, tz, sensor->id);
	}

	/* Just complain if no overheat interrupt was set up */
	if (!priv->overheat_sensor)
		FUNC9(&pdev->dev, "Overheat interrupt not available\n");

	return 0;
}