#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tps80031_regulator_platform_data {int /*<<< orphan*/  ext_ctrl_flag; int /*<<< orphan*/  config_flags; int /*<<< orphan*/ * reg_init_data; } ;
struct tps80031_regulator {TYPE_1__* rinfo; int /*<<< orphan*/  ext_ctrl_flag; int /*<<< orphan*/  config_flags; TYPE_2__* dev; } ;
struct tps80031_platform_data {struct tps80031_regulator_platform_data** regulator_pdata; } ;
struct tps80031 {int /*<<< orphan*/ * regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/ * init_data; int /*<<< orphan*/  regmap; struct tps80031_regulator* driver_data; TYPE_2__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_6__ {size_t volt_id; TYPE_3__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int TPS80031_REGULATOR_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tps80031_regulator*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 struct tps80031* FUNC4 (int /*<<< orphan*/ ) ; 
 struct tps80031_platform_data* FUNC5 (int /*<<< orphan*/ ) ; 
 struct tps80031_regulator* FUNC6 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC7 (TYPE_2__*,TYPE_3__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct tps80031_regulator*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct tps80031_regulator*,struct tps80031_regulator_platform_data*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct tps80031_regulator*,struct tps80031_regulator_platform_data*) ; 
 TYPE_1__* tps80031_rinfo ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct tps80031_platform_data *pdata;
	struct tps80031_regulator_platform_data *tps_pdata;
	struct tps80031_regulator *ri;
	struct tps80031_regulator *pmic;
	struct regulator_dev *rdev;
	struct regulator_config config = { };
	struct tps80031 *tps80031_mfd = FUNC4(pdev->dev.parent);
	int ret;
	int num;

	pdata = FUNC5(pdev->dev.parent);

	if (!pdata) {
		FUNC3(&pdev->dev, "No platform data\n");
		return -EINVAL;
	}

	pmic = FUNC6(&pdev->dev,
			TPS80031_REGULATOR_MAX, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	for (num = 0; num < TPS80031_REGULATOR_MAX; ++num) {
		tps_pdata = pdata->regulator_pdata[num];
		ri = &pmic[num];
		ri->rinfo = &tps80031_rinfo[num];
		ri->dev = &pdev->dev;

		FUNC2(pdev->dev.parent, ri);
		config.dev = &pdev->dev;
		config.init_data = NULL;
		config.driver_data = ri;
		config.regmap = tps80031_mfd->regmap[ri->rinfo->volt_id];

		if (tps_pdata) {
			config.init_data = tps_pdata->reg_init_data;
			ri->config_flags = tps_pdata->config_flags;
			ri->ext_ctrl_flag = tps_pdata->ext_ctrl_flag;
			ret = FUNC10(pdev->dev.parent,
					ri, tps_pdata);
			if (ret < 0) {
				FUNC3(&pdev->dev,
					"regulator config failed, e %d\n", ret);
				return ret;
			}

			ret = FUNC9(pdev->dev.parent,
					ri, tps_pdata);
			if (ret < 0) {
				FUNC3(&pdev->dev,
					"pwr_req config failed, err %d\n", ret);
				return ret;
			}
		}
		rdev = FUNC7(&pdev->dev, &ri->rinfo->desc,
					       &config);
		if (FUNC0(rdev)) {
			FUNC3(&pdev->dev,
				"register regulator failed %s\n",
					ri->rinfo->desc.name);
			return FUNC1(rdev);
		}
	}

	FUNC8(pdev, pmic);
	return 0;
}