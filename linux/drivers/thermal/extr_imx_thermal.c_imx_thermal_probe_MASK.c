#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct imx_thermal_data {scalar_t__ irq; int temp_max; int temp_critical; int temp_passive; int irq_enabled; struct regmap* thermal_clk; struct regmap* tz; int /*<<< orphan*/  mode; TYPE_1__* socdata; int /*<<< orphan*/  temp_grade; struct regmap* tempmon; } ;
struct TYPE_8__ {scalar_t__ version; int low_alarm_mask; int power_down_mask; int measure_temp_mask; int measure_freq_mask; int measure_freq_shift; scalar_t__ sensor_ctrl; scalar_t__ measure_freq_ctrl; scalar_t__ low_alarm_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMX6_MISC0 ; 
 int IMX6_MISC0_REFTOP_SELBIASOFF ; 
 scalar_t__ IMX6_MISC1 ; 
 int IMX6_MISC1_IRQ_TEMPHIGH ; 
 int IMX6_MISC1_IRQ_TEMPLOW ; 
 int IMX6_MISC1_IRQ_TEMPPANIC ; 
 int /*<<< orphan*/  IMX_PASSIVE_DELAY ; 
 int /*<<< orphan*/  IMX_POLLING_DELAY ; 
 int /*<<< orphan*/  IMX_TRIP_NUM ; 
 int /*<<< orphan*/  IMX_TRIP_PASSIVE ; 
 scalar_t__ FUNC2 (struct regmap*) ; 
 int FUNC3 (struct regmap*) ; 
 scalar_t__ REG_CLR ; 
 scalar_t__ REG_SET ; 
 scalar_t__ TEMPMON_IMX6SX ; 
 scalar_t__ TEMPMON_IMX7D ; 
 int /*<<< orphan*/  THERMAL_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int FUNC5 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 struct regmap* FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct imx_thermal_data* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct imx_thermal_data*) ; 
 int FUNC11 (struct platform_device*) ; 
 int FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct imx_thermal_data*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct imx_thermal_data*,int) ; 
 int /*<<< orphan*/  imx_thermal_alarm_irq ; 
 int /*<<< orphan*/  imx_thermal_alarm_irq_thread ; 
 int FUNC15 (struct imx_thermal_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct imx_thermal_data*) ; 
 int /*<<< orphan*/  imx_tz_ops ; 
 TYPE_1__* FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct imx_thermal_data*) ; 
 int /*<<< orphan*/  FUNC21 (struct regmap*,scalar_t__,int) ; 
 struct regmap* FUNC22 (int /*<<< orphan*/ ,char*) ; 
 struct regmap* FUNC23 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct imx_thermal_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct regmap*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct imx_thermal_data *data;
	struct regmap *map;
	int measure_freq;
	int ret;

	data = FUNC9(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	map = FUNC22(pdev->dev.of_node, "fsl,tempmon");
	if (FUNC2(map)) {
		ret = FUNC3(map);
		FUNC6(&pdev->dev, "failed to get tempmon regmap: %d\n", ret);
		return ret;
	}
	data->tempmon = map;

	data->socdata = FUNC17(&pdev->dev);
	if (!data->socdata) {
		FUNC6(&pdev->dev, "no device match found\n");
		return -ENODEV;
	}

	/* make sure the IRQ flag is clear before enabling irq on i.MX6SX */
	if (data->socdata->version == TEMPMON_IMX6SX) {
		FUNC21(map, IMX6_MISC1 + REG_CLR,
			IMX6_MISC1_IRQ_TEMPHIGH | IMX6_MISC1_IRQ_TEMPLOW
			| IMX6_MISC1_IRQ_TEMPPANIC);
		/*
		 * reset value of LOW ALARM is incorrect, set it to lowest
		 * value to avoid false trigger of low alarm.
		 */
		FUNC21(map, data->socdata->low_alarm_ctrl + REG_SET,
			     data->socdata->low_alarm_mask);
	}

	data->irq = FUNC19(pdev, 0);
	if (data->irq < 0)
		return data->irq;

	FUNC20(pdev, data);

	if (FUNC18(pdev->dev.of_node, "nvmem-cells", NULL)) {
		ret = FUNC11(pdev);
		if (ret) {
			if (ret == -EPROBE_DEFER)
				return ret;

			FUNC6(&pdev->dev, "failed to init from nvmem: %d\n",
				ret);
			return ret;
		}
	} else {
		ret = FUNC12(pdev);
		if (ret) {
			FUNC6(&pdev->dev, "failed to init from fsl,tempmon-data\n");
			return ret;
		}
	}

	/* Make sure sensor is in known good state for measurements */
	FUNC21(map, data->socdata->sensor_ctrl + REG_CLR,
		     data->socdata->power_down_mask);
	FUNC21(map, data->socdata->sensor_ctrl + REG_CLR,
		     data->socdata->measure_temp_mask);
	FUNC21(map, data->socdata->measure_freq_ctrl + REG_CLR,
		     data->socdata->measure_freq_mask);
	if (data->socdata->version != TEMPMON_IMX7D)
		FUNC21(map, IMX6_MISC0 + REG_SET,
			IMX6_MISC0_REFTOP_SELBIASOFF);
	FUNC21(map, data->socdata->sensor_ctrl + REG_SET,
		     data->socdata->power_down_mask);

	ret = FUNC15(data);
	if (ret) {
		if (ret == -EPROBE_DEFER)
			return ret;

		FUNC6(&pdev->dev,
			"failed to register cpufreq cooling device: %d\n", ret);
		return ret;
	}

	data->thermal_clk = FUNC8(&pdev->dev, NULL);
	if (FUNC2(data->thermal_clk)) {
		ret = FUNC3(data->thermal_clk);
		if (ret != -EPROBE_DEFER)
			FUNC6(&pdev->dev,
				"failed to get thermal clk: %d\n", ret);
		goto legacy_cleanup;
	}

	/*
	 * Thermal sensor needs clk on to get correct value, normally
	 * we should enable its clk before taking measurement and disable
	 * clk after measurement is done, but if alarm function is enabled,
	 * hardware will auto measure the temperature periodically, so we
	 * need to keep the clk always on for alarm function.
	 */
	ret = FUNC5(data->thermal_clk);
	if (ret) {
		FUNC6(&pdev->dev, "failed to enable thermal clk: %d\n", ret);
		goto legacy_cleanup;
	}

	data->tz = FUNC23("imx_thermal_zone",
						IMX_TRIP_NUM,
						FUNC0(IMX_TRIP_PASSIVE), data,
						&imx_tz_ops, NULL,
						IMX_PASSIVE_DELAY,
						IMX_POLLING_DELAY);
	if (FUNC2(data->tz)) {
		ret = FUNC3(data->tz);
		FUNC6(&pdev->dev,
			"failed to register thermal zone device %d\n", ret);
		goto clk_disable;
	}

	FUNC7(&pdev->dev, "%s CPU temperature grade - max:%dC"
		 " critical:%dC passive:%dC\n", data->temp_grade,
		 data->temp_max / 1000, data->temp_critical / 1000,
		 data->temp_passive / 1000);

	/* Enable measurements at ~ 10 Hz */
	FUNC21(map, data->socdata->measure_freq_ctrl + REG_CLR,
		     data->socdata->measure_freq_mask);
	measure_freq = FUNC1(32768, 10); /* 10 Hz */
	FUNC21(map, data->socdata->measure_freq_ctrl + REG_SET,
		     measure_freq << data->socdata->measure_freq_shift);
	FUNC13(data, data->temp_passive);

	if (data->socdata->version == TEMPMON_IMX6SX)
		FUNC14(data, data->temp_critical);

	FUNC21(map, data->socdata->sensor_ctrl + REG_CLR,
		     data->socdata->power_down_mask);
	FUNC21(map, data->socdata->sensor_ctrl + REG_SET,
		     data->socdata->measure_temp_mask);

	data->irq_enabled = true;
	data->mode = THERMAL_DEVICE_ENABLED;

	ret = FUNC10(&pdev->dev, data->irq,
			imx_thermal_alarm_irq, imx_thermal_alarm_irq_thread,
			0, "imx_thermal", data);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to request alarm irq: %d\n", ret);
		goto thermal_zone_unregister;
	}

	return 0;

thermal_zone_unregister:
	FUNC24(data->tz);
clk_disable:
	FUNC4(data->thermal_clk);
legacy_cleanup:
	FUNC16(data);

	return ret;
}