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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mlxreg_io_priv_data {int /*<<< orphan*/  hwmon; int /*<<< orphan*/  groups; struct platform_device* pdev; int /*<<< orphan*/  pdata; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mlxreg_io_priv_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,struct mlxreg_io_priv_data*,int /*<<< orphan*/ ) ; 
 struct mlxreg_io_priv_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlxreg_io_priv_data*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mlxreg_io_priv_data *priv;
	int err;

	priv = FUNC6(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->pdata = FUNC3(&pdev->dev);
	if (!priv->pdata) {
		FUNC2(&pdev->dev, "Failed to get platform data.\n");
		return -EINVAL;
	}

	priv->pdev = pdev;

	err = FUNC7(priv);
	if (err) {
		FUNC2(&priv->pdev->dev, "Failed to allocate attributes: %d\n",
			err);
		return err;
	}

	priv->hwmon = FUNC5(&pdev->dev,
							     "mlxreg_io",
							      priv,
							      priv->groups);
	if (FUNC0(priv->hwmon)) {
		FUNC2(&pdev->dev, "Failed to register hwmon device %ld\n",
			FUNC1(priv->hwmon));
		return FUNC1(priv->hwmon);
	}

	FUNC4(&pdev->dev, priv);

	return 0;
}