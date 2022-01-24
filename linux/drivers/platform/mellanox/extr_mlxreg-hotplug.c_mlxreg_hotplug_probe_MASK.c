#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mlxreg_hotplug_priv_data {scalar_t__ irq; int after_probe; int /*<<< orphan*/  hwmon; int /*<<< orphan*/  groups; int /*<<< orphan*/  dwork_irq; int /*<<< orphan*/  lock; struct platform_device* pdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct mlxreg_core_hotplug_platform_data {scalar_t__ irq; int /*<<< orphan*/  regmap; int /*<<< orphan*/  deferred_nr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct mlxreg_core_hotplug_platform_data* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct mlxreg_hotplug_priv_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,struct mlxreg_hotplug_priv_data*,int /*<<< orphan*/ ) ; 
 struct mlxreg_hotplug_priv_data* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ,int,char*,struct mlxreg_hotplug_priv_data*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct i2c_adapter* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*) ; 
 int FUNC12 (struct mlxreg_hotplug_priv_data*) ; 
 int /*<<< orphan*/  mlxreg_hotplug_irq_handler ; 
 int /*<<< orphan*/  FUNC13 (struct mlxreg_hotplug_priv_data*) ; 
 int /*<<< orphan*/  mlxreg_hotplug_work_handler ; 
 scalar_t__ FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct mlxreg_core_hotplug_platform_data *pdata;
	struct mlxreg_hotplug_priv_data *priv;
	struct i2c_adapter *deferred_adap;
	int err;

	pdata = FUNC4(&pdev->dev);
	if (!pdata) {
		FUNC3(&pdev->dev, "Failed to get platform data.\n");
		return -EINVAL;
	}

	/* Defer probing if the necessary adapter is not configured yet. */
	deferred_adap = FUNC10(pdata->deferred_nr);
	if (!deferred_adap)
		return -EPROBE_DEFER;
	FUNC11(deferred_adap);

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (pdata->irq) {
		priv->irq = pdata->irq;
	} else {
		priv->irq = FUNC14(pdev, 0);
		if (priv->irq < 0)
			return priv->irq;
	}

	priv->regmap = pdata->regmap;
	priv->dev = pdev->dev.parent;
	priv->pdev = pdev;

	err = FUNC8(&pdev->dev, priv->irq,
			       mlxreg_hotplug_irq_handler, IRQF_TRIGGER_FALLING
			       | IRQF_SHARED, "mlxreg-hotplug", priv);
	if (err) {
		FUNC3(&pdev->dev, "Failed to request irq: %d\n", err);
		return err;
	}

	FUNC9(priv->irq);
	FUNC15(&priv->lock);
	FUNC0(&priv->dwork_irq, mlxreg_hotplug_work_handler);
	FUNC5(&pdev->dev, priv);

	err = FUNC12(priv);
	if (err) {
		FUNC3(&pdev->dev, "Failed to allocate attributes: %d\n",
			err);
		return err;
	}

	priv->hwmon = FUNC6(&pdev->dev,
					"mlxreg_hotplug", priv, priv->groups);
	if (FUNC1(priv->hwmon)) {
		FUNC3(&pdev->dev, "Failed to register hwmon device %ld\n",
			FUNC2(priv->hwmon));
		return FUNC2(priv->hwmon);
	}

	/* Perform initial interrupts setup. */
	FUNC13(priv);
	priv->after_probe = true;

	return 0;
}