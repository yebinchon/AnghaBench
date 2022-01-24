#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct rcar_thermal_priv {int id; int /*<<< orphan*/  list; TYPE_2__* zone; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct rcar_thermal_chip const* chip; struct rcar_thermal_common* common; TYPE_2__* base; } ;
struct rcar_thermal_common {TYPE_2__* base; int /*<<< orphan*/  head; struct device* dev; int /*<<< orphan*/  lock; } ;
struct rcar_thermal_chip {int nirqs; scalar_t__ irq_per_ch; scalar_t__ use_of_thermal; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {TYPE_1__* tzp; } ;
struct TYPE_7__ {int no_hwmon; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IDLE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rcar_thermal_common*) ; 
 TYPE_2__* FUNC10 (struct device*,int,struct rcar_thermal_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct rcar_thermal_chip* FUNC13 (struct device*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct rcar_thermal_common*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct rcar_thermal_common*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rcar_thermal_irq ; 
 int /*<<< orphan*/  FUNC19 (struct rcar_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*) ; 
 int FUNC21 (struct rcar_thermal_priv*) ; 
 int /*<<< orphan*/  rcar_thermal_work ; 
 int /*<<< orphan*/  rcar_thermal_zone_of_ops ; 
 int /*<<< orphan*/  rcar_thermal_zone_ops ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (TYPE_2__*) ; 
 TYPE_2__* FUNC24 (char*,int,int /*<<< orphan*/ ,struct rcar_thermal_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct rcar_thermal_common *common;
	struct rcar_thermal_priv *priv;
	struct device *dev = &pdev->dev;
	struct resource *res, *irq;
	const struct rcar_thermal_chip *chip = FUNC13(dev);
	int mres = 0;
	int i;
	int ret = -ENODEV;
	int idle = IDLE_INTERVAL;
	u32 enr_bits = 0;

	common = FUNC8(dev, sizeof(*common), GFP_KERNEL);
	if (!common)
		return -ENOMEM;

	FUNC15(pdev, common);

	FUNC1(&common->head);
	FUNC22(&common->lock);
	common->dev = dev;

	FUNC16(dev);
	FUNC17(dev);

	for (i = 0; i < chip->nirqs; i++) {
		irq = FUNC14(pdev, IORESOURCE_IRQ, i);
		if (!irq)
			continue;
		if (!common->base) {
			/*
			 * platform has IRQ support.
			 * Then, driver uses common registers
			 * rcar_has_irq_support() will be enabled
			 */
			res = FUNC14(pdev, IORESOURCE_MEM,
						    mres++);
			common->base = FUNC7(dev, res);
			if (FUNC2(common->base))
				return FUNC3(common->base);

			idle = 0; /* polling delay is not needed */
		}

		ret = FUNC9(dev, irq->start, rcar_thermal_irq,
				       IRQF_SHARED, FUNC6(dev), common);
		if (ret) {
			FUNC4(dev, "irq request failed\n ");
			goto error_unregister;
		}

		/* update ENR bits */
		if (chip->irq_per_ch)
			enr_bits |= 1 << i;
	}

	for (i = 0;; i++) {
		res = FUNC14(pdev, IORESOURCE_MEM, mres++);
		if (!res)
			break;

		priv = FUNC8(dev, sizeof(*priv), GFP_KERNEL);
		if (!priv) {
			ret = -ENOMEM;
			goto error_unregister;
		}

		priv->base = FUNC7(dev, res);
		if (FUNC2(priv->base)) {
			ret = FUNC3(priv->base);
			goto error_unregister;
		}

		priv->common = common;
		priv->id = i;
		priv->chip = chip;
		FUNC12(&priv->lock);
		FUNC1(&priv->list);
		FUNC0(&priv->work, rcar_thermal_work);
		ret = FUNC21(priv);
		if (ret < 0)
			goto error_unregister;

		if (chip->use_of_thermal)
			priv->zone = FUNC10(
						dev, i, priv,
						&rcar_thermal_zone_of_ops);
		else
			priv->zone = FUNC24(
						"rcar_thermal",
						1, 0, priv,
						&rcar_thermal_zone_ops, NULL, 0,
						idle);
		if (FUNC2(priv->zone)) {
			FUNC4(dev, "can't register thermal zone\n");
			ret = FUNC3(priv->zone);
			priv->zone = NULL;
			goto error_unregister;
		}

		if (chip->use_of_thermal) {
			/*
			 * thermal_zone doesn't enable hwmon as default,
			 * but, enable it here to keep compatible
			 */
			priv->zone->tzp->no_hwmon = false;
			ret = FUNC23(priv->zone);
			if (ret)
				goto error_unregister;
		}

		FUNC19(priv);

		FUNC11(&priv->list, &common->head);

		/* update ENR bits */
		if (!chip->irq_per_ch)
			enr_bits |= 3 << (i * 8);
	}

	if (common->base && enr_bits)
		FUNC18(common, ENR, enr_bits);

	FUNC5(dev, "%d sensor probed\n", i);

	return 0;

error_unregister:
	FUNC20(pdev);

	return ret;
}