#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {struct olpc_ec_priv* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct olpc_ec_priv {int dcon_enabled; int /*<<< orphan*/  dbgfs_dir; int /*<<< orphan*/  dcon_rdev; int /*<<< orphan*/  version; int /*<<< orphan*/  cmd_q_lock; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  worker; scalar_t__ drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_FIRMWARE_REV ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcon_desc ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 scalar_t__ ec_driver ; 
 struct olpc_ec_priv* ec_priv ; 
 int /*<<< orphan*/  FUNC6 (struct olpc_ec_priv*) ; 
 struct olpc_ec_priv* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  olpc_ec_worker ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct olpc_ec_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct olpc_ec_priv *ec;
	struct regulator_config config = { };
	int err;

	if (!ec_driver)
		return -ENODEV;

	ec = FUNC7(sizeof(*ec), GFP_KERNEL);
	if (!ec)
		return -ENOMEM;

	ec->drv = ec_driver;
	FUNC1(&ec->worker, olpc_ec_worker);
	FUNC8(&ec->cmd_lock);

	FUNC0(&ec->cmd_q);
	FUNC12(&ec->cmd_q_lock);

	ec_priv = ec;
	FUNC11(pdev, ec);

	/* get the EC revision */
	err = FUNC9(EC_FIRMWARE_REV, NULL, 0, &ec->version, 1);
	if (err) {
		ec_priv = NULL;
		FUNC6(ec);
		return err;
	}

	config.dev = pdev->dev.parent;
	config.driver_data = ec;
	ec->dcon_enabled = true;
	ec->dcon_rdev = FUNC5(&pdev->dev, &dcon_desc,
								&config);
	if (FUNC2(ec->dcon_rdev)) {
		FUNC4(&pdev->dev, "failed to register DCON regulator\n");
		return FUNC3(ec->dcon_rdev);
	}

	ec->dbgfs_dir = FUNC10();

	return err;
}