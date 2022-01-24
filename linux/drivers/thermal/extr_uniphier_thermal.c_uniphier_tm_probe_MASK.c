#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uniphier_tm_dev {int* alert_en; struct regmap* tz_dev; struct regmap* regmap; int /*<<< orphan*/  data; struct device* dev; } ;
struct thermal_trip {scalar_t__ type; int temperature; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ALERT_CH_NUM ; 
 int CRITICAL_TEMP_LIMIT ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 scalar_t__ THERMAL_TRIP_CRITICAL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct uniphier_tm_dev* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uniphier_tm_dev*) ; 
 struct regmap* FUNC6 (struct device*,int /*<<< orphan*/ ,struct uniphier_tm_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 int FUNC10 (struct regmap*) ; 
 struct thermal_trip* FUNC11 (struct regmap*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct uniphier_tm_dev*) ; 
 struct regmap* FUNC14 (struct device_node*) ; 
 int /*<<< orphan*/  uniphier_of_thermal_ops ; 
 int /*<<< orphan*/  uniphier_tm_alarm_irq ; 
 int /*<<< orphan*/  uniphier_tm_alarm_irq_thread ; 
 int /*<<< orphan*/  FUNC15 (struct uniphier_tm_dev*) ; 
 int FUNC16 (struct uniphier_tm_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct uniphier_tm_dev*,int,int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct regmap *regmap;
	struct device_node *parent;
	struct uniphier_tm_dev *tdev;
	const struct thermal_trip *trips;
	int i, ret, irq, ntrips, crit_temp = INT_MAX;

	tdev = FUNC4(dev, sizeof(*tdev), GFP_KERNEL);
	if (!tdev)
		return -ENOMEM;
	tdev->dev = dev;

	tdev->data = FUNC7(dev);
	if (FUNC2(!tdev->data))
		return -EINVAL;

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	/* get regmap from syscon node */
	parent = FUNC8(dev->of_node); /* parent should be syscon node */
	regmap = FUNC14(parent);
	FUNC9(parent);
	if (FUNC0(regmap)) {
		FUNC3(dev, "failed to get regmap (error %ld)\n",
			FUNC1(regmap));
		return FUNC1(regmap);
	}
	tdev->regmap = regmap;

	ret = FUNC16(tdev);
	if (ret) {
		FUNC3(dev, "failed to initialize sensor\n");
		return ret;
	}

	ret = FUNC5(dev, irq, uniphier_tm_alarm_irq,
					uniphier_tm_alarm_irq_thread,
					0, "thermal", tdev);
	if (ret)
		return ret;

	FUNC13(pdev, tdev);

	tdev->tz_dev = FUNC6(dev, 0, tdev,
						&uniphier_of_thermal_ops);
	if (FUNC0(tdev->tz_dev)) {
		FUNC3(dev, "failed to register sensor device\n");
		return FUNC1(tdev->tz_dev);
	}

	/* get trip points */
	trips = FUNC11(tdev->tz_dev);
	ntrips = FUNC10(tdev->tz_dev);
	if (ntrips > ALERT_CH_NUM) {
		FUNC3(dev, "thermal zone has too many trips\n");
		return -E2BIG;
	}

	/* set alert temperatures */
	for (i = 0; i < ntrips; i++) {
		if (trips[i].type == THERMAL_TRIP_CRITICAL &&
		    trips[i].temperature < crit_temp)
			crit_temp = trips[i].temperature;
		FUNC17(tdev, i, trips[i].temperature);
		tdev->alert_en[i] = true;
	}
	if (crit_temp > CRITICAL_TEMP_LIMIT) {
		FUNC3(dev, "critical trip is over limit(>%d), or not set\n",
			CRITICAL_TEMP_LIMIT);
		return -EINVAL;
	}

	FUNC15(tdev);

	return 0;
}