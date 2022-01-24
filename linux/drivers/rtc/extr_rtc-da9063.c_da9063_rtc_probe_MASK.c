#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_11__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {struct da9063_compatible_rtc_regmap* data; } ;
struct da9063_compatible_rtc_regmap {size_t rtc_data_start; int /*<<< orphan*/  rtc_alarm_len; int /*<<< orphan*/  rtc_alarm_secs_reg; int /*<<< orphan*/  rtc_tick_on_mask; int /*<<< orphan*/  rtc_alarm_year_reg; int /*<<< orphan*/  rtc_alarm_status_mask; int /*<<< orphan*/  rtc_crystal_mask; int /*<<< orphan*/  rtc_enable_32k_crystal_reg; int /*<<< orphan*/  rtc_enable_mask; int /*<<< orphan*/  rtc_enable_reg; } ;
struct da9063_compatible_rtc {int rtc_sync; TYPE_1__* rtc_dev; int /*<<< orphan*/  alarm_time; int /*<<< orphan*/  regmap; struct da9063_compatible_rtc_regmap* config; } ;
struct da9063 {scalar_t__ variant_code; } ;
struct TYPE_10__ {int uie_unsupported; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9063_ALARM_STATUS_ALARM ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ PMIC_DA9063_AD ; 
 int FUNC1 (TYPE_1__*) ; 
 int RTC_DATA_LEN ; 
 size_t RTC_SEC ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2063 ; 
 struct da9063_compatible_rtc_regmap da9063_ad_regs ; 
 int /*<<< orphan*/  da9063_alarm_event ; 
 int /*<<< orphan*/  da9063_compatible_reg_id_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct da9063_compatible_rtc*) ; 
 int /*<<< orphan*/  da9063_rtc_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 struct da9063* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 struct da9063_compatible_rtc* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9063_compatible_rtc*) ; 
 TYPE_1__* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct da9063_compatible_rtc*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct da9063_compatible_rtc *rtc;
	const struct da9063_compatible_rtc_regmap *config;
	const struct of_device_id *match;
	int irq_alarm;
	u8 data[RTC_DATA_LEN];
	int ret;

	if (!pdev->dev.of_node)
		return -ENXIO;

	match = FUNC11(da9063_compatible_reg_id_table,
			      pdev->dev.of_node);

	rtc = FUNC7(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->config = match->data;
	if (FUNC10(pdev->dev.of_node, "dlg,da9063-rtc")) {
		struct da9063 *chip = FUNC4(pdev->dev.parent);

		if (chip->variant_code == PMIC_DA9063_AD)
			rtc->config = &da9063_ad_regs;
	}

	rtc->regmap = FUNC5(pdev->dev.parent, NULL);
	if (!rtc->regmap) {
		FUNC6(&pdev->dev, "Parent regmap unavailable.\n");
		return -ENXIO;
	}

	config = rtc->config;
	ret = FUNC15(rtc->regmap,
				 config->rtc_enable_reg,
				 config->rtc_enable_mask,
				 config->rtc_enable_mask);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to enable RTC\n");
		return ret;
	}

	ret = FUNC15(rtc->regmap,
				 config->rtc_enable_32k_crystal_reg,
				 config->rtc_crystal_mask,
				 config->rtc_crystal_mask);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to run 32kHz oscillator\n");
		return ret;
	}

	ret = FUNC15(rtc->regmap,
				 config->rtc_alarm_secs_reg,
				 config->rtc_alarm_status_mask,
				 0);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to access RTC alarm register\n");
		return ret;
	}

	ret = FUNC15(rtc->regmap,
				 config->rtc_alarm_secs_reg,
				 DA9063_ALARM_STATUS_ALARM,
				 DA9063_ALARM_STATUS_ALARM);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to access RTC alarm register\n");
		return ret;
	}

	ret = FUNC15(rtc->regmap,
				 config->rtc_alarm_year_reg,
				 config->rtc_tick_on_mask,
				 0);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to disable TICKs\n");
		return ret;
	}

	data[RTC_SEC] = 0;
	ret = FUNC14(rtc->regmap,
			       config->rtc_alarm_secs_reg,
			       &data[config->rtc_data_start],
			       config->rtc_alarm_len);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to read initial alarm data: %d\n",
			ret);
		return ret;
	}

	FUNC13(pdev, rtc);

	rtc->rtc_dev = FUNC9(&pdev->dev);
	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	rtc->rtc_dev->ops = &da9063_rtc_ops;
	rtc->rtc_dev->range_min = RTC_TIMESTAMP_BEGIN_2000;
	rtc->rtc_dev->range_max = RTC_TIMESTAMP_END_2063;

	FUNC2(data, &rtc->alarm_time, rtc);
	rtc->rtc_sync = false;

	/*
	 * TODO: some models have alarms on a minute boundary but still support
	 * real hardware interrupts. Add this once the core supports it.
	 */
	if (config->rtc_data_start != RTC_SEC)
		rtc->rtc_dev->uie_unsupported = 1;

	irq_alarm = FUNC12(pdev, "ALARM");
	ret = FUNC8(&pdev->dev, irq_alarm, NULL,
					da9063_alarm_event,
					IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					"ALARM", rtc);
	if (ret)
		FUNC3(&pdev->dev, "Failed to request ALARM IRQ %d: %d\n",
			irq_alarm, ret);

	return FUNC16(rtc->rtc_dev);
}