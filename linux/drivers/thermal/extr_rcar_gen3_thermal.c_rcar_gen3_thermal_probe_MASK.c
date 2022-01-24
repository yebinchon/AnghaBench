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
struct thermal_zone_device {TYPE_1__* tzp; } ;
struct resource {int dummy; } ;
struct rcar_gen3_thermal_tsc {int id; struct thermal_zone_device* zone; struct thermal_zone_device* base; } ;
struct rcar_gen3_thermal_priv {int num_tscs; int /*<<< orphan*/  (* thermal_init ) (struct rcar_gen3_thermal_tsc*) ;struct rcar_gen3_thermal_tsc** tscs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int no_hwmon; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int TSC_MAX_NUM ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,struct thermal_zone_device*) ; 
 struct thermal_zone_device* FUNC6 (struct device*,struct resource*) ; 
 char* FUNC7 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rcar_gen3_thermal_priv*) ; 
 struct thermal_zone_device* FUNC10 (struct device*,int,struct rcar_gen3_thermal_tsc*,int /*<<< orphan*/ *) ; 
 int* FUNC11 (struct device*) ; 
 int FUNC12 (struct thermal_zone_device*) ; 
 int FUNC13 (struct platform_device*,int) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct rcar_gen3_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  r8a7795es1 ; 
 int /*<<< orphan*/  rcar_gen3_hwmon_action ; 
 int /*<<< orphan*/  FUNC18 (struct rcar_gen3_thermal_tsc*,int*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC19 (struct rcar_gen3_thermal_tsc*) ; 
 int /*<<< orphan*/  FUNC20 (struct rcar_gen3_thermal_tsc*) ; 
 int /*<<< orphan*/  rcar_gen3_thermal_irq ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*) ; 
 int /*<<< orphan*/  rcar_gen3_tz_of_ops ; 
 int /*<<< orphan*/  FUNC22 (struct rcar_gen3_thermal_priv*,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct rcar_gen3_thermal_tsc*) ; 
 int /*<<< orphan*/ * thcode ; 
 int FUNC25 (struct thermal_zone_device*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct rcar_gen3_thermal_priv *priv;
	struct device *dev = &pdev->dev;
	const int *rcar_gen3_ths_tj_1 = FUNC11(dev);
	struct resource *res;
	struct thermal_zone_device *zone;
	int ret, irq, i;
	char *irqname;

	/* default values if FUSEs are missing */
	/* TODO: Read values from hardware on supported platforms */
	int ptat[3] = { 2631, 1509, 435 };

	priv = FUNC8(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->thermal_init = rcar_gen3_thermal_init;
	if (FUNC23(r8a7795es1))
		priv->thermal_init = rcar_gen3_thermal_init_r8a7795es1;

	FUNC15(pdev, priv);

	/*
	 * Request 2 (of the 3 possible) IRQs, the driver only needs to
	 * to trigger on the low and high trip points of the current
	 * temp window at this point.
	 */
	for (i = 0; i < 2; i++) {
		irq = FUNC13(pdev, i);
		if (irq < 0)
			return irq;

		irqname = FUNC7(dev, GFP_KERNEL, "%s:ch%d",
					 FUNC4(dev), i);
		if (!irqname)
			return -ENOMEM;

		ret = FUNC9(dev, irq, NULL,
						rcar_gen3_thermal_irq,
						IRQF_ONESHOT, irqname, priv);
		if (ret)
			return ret;
	}

	FUNC16(dev);
	FUNC17(dev);

	for (i = 0; i < TSC_MAX_NUM; i++) {
		struct rcar_gen3_thermal_tsc *tsc;

		res = FUNC14(pdev, IORESOURCE_MEM, i);
		if (!res)
			break;

		tsc = FUNC8(dev, sizeof(*tsc), GFP_KERNEL);
		if (!tsc) {
			ret = -ENOMEM;
			goto error_unregister;
		}

		tsc->base = FUNC6(dev, res);
		if (FUNC0(tsc->base)) {
			ret = FUNC1(tsc->base);
			goto error_unregister;
		}
		tsc->id = i;

		priv->tscs[i] = tsc;

		priv->thermal_init(tsc);
		FUNC18(tsc, ptat, thcode[i],
					     *rcar_gen3_ths_tj_1);

		zone = FUNC10(dev, i, tsc,
							    &rcar_gen3_tz_of_ops);
		if (FUNC0(zone)) {
			FUNC2(dev, "Can't register thermal zone\n");
			ret = FUNC1(zone);
			goto error_unregister;
		}
		tsc->zone = zone;

		tsc->zone->tzp->no_hwmon = false;
		ret = FUNC25(tsc->zone);
		if (ret)
			goto error_unregister;

		ret = FUNC5(dev, rcar_gen3_hwmon_action, zone);
		if (ret) {
			goto error_unregister;
		}

		ret = FUNC12(tsc->zone);
		if (ret < 0)
			goto error_unregister;

		FUNC3(dev, "TSC%d: Loaded %d trip points\n", i, ret);
	}

	priv->num_tscs = i;

	if (!priv->num_tscs) {
		ret = -ENODEV;
		goto error_unregister;
	}

	FUNC22(priv, true);

	return 0;

error_unregister:
	FUNC21(pdev);

	return ret;
}