#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct bd9571mwv* driver_data; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct bd9571mwv_reg {unsigned int bkup_mode_cnt_keepon; void* rstbmode_pulse; void* bkup_mode_enabled; void* rstbmode_level; struct bd9571mwv* bd; } ;
struct bd9571mwv {TYPE_4__* dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int BD9571MWV_BKUP_MODE_CNT_KEEPON_MASK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  dev_attr_backup_mode ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 struct bd9571mwv* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct bd9571mwv_reg* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct bd9571mwv_reg*) ; 
 int /*<<< orphan*/ * regulators ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct bd9571mwv *bd = FUNC4(pdev->dev.parent);
	struct regulator_config config = { };
	struct bd9571mwv_reg *bdreg;
	struct regulator_dev *rdev;
	unsigned int val;
	int i;

	bdreg = FUNC6(&pdev->dev, sizeof(*bdreg), GFP_KERNEL);
	if (!bdreg)
		return -ENOMEM;

	bdreg->bd = bd;

	FUNC10(pdev, bdreg);

	config.dev = &pdev->dev;
	config.dev->of_node = bd->dev->of_node;
	config.driver_data = bd;
	config.regmap = bd->regmap;

	for (i = 0; i < FUNC0(regulators); i++) {
		rdev = FUNC7(&pdev->dev, &regulators[i],
					       &config);
		if (FUNC1(rdev)) {
			FUNC3(bd->dev, "failed to register %s regulator\n",
				pdev->name);
			return FUNC2(rdev);
		}
	}

	val = 0;
	FUNC9(bd->dev->of_node, "rohm,ddr-backup-power", &val);
	if (val & ~BD9571MWV_BKUP_MODE_CNT_KEEPON_MASK) {
		FUNC3(bd->dev, "invalid %s mode %u\n",
			"rohm,ddr-backup-power", val);
		return -EINVAL;
	}
	bdreg->bkup_mode_cnt_keepon = val;

	bdreg->rstbmode_level = FUNC8(bd->dev->of_node,
						      "rohm,rstbmode-level");
	bdreg->rstbmode_pulse = FUNC8(bd->dev->of_node,
						      "rohm,rstbmode-pulse");
	if (bdreg->rstbmode_level && bdreg->rstbmode_pulse) {
		FUNC3(bd->dev, "only one rohm,rstbmode-* may be specified");
		return -EINVAL;
	}

#ifdef CONFIG_PM_SLEEP
	if (bdreg->bkup_mode_cnt_keepon) {
		int ret;

		/*
		 * Backup mode is enabled by default in pulse mode, but needs
		 * explicit user setup in level mode.
		 */
		bdreg->bkup_mode_enabled = bdreg->rstbmode_pulse;

		ret = device_create_file(&pdev->dev, &dev_attr_backup_mode);
		if (ret)
			return ret;
	}
#endif /* CONFIG_PM_SLEEP */

	return 0;
}