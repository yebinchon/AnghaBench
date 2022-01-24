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
struct regulator_dev {int dummy; } ;
struct regulator_config {struct max77802_regulator_prv* driver_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max77802_regulator_prv {int* opmode; } ;
struct max77686_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int id; int /*<<< orphan*/  enable_reg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int MAX77802_OPMODE_MASK ; 
 void* MAX77802_OPMODE_NORMAL ; 
 int MAX77802_REG_MAX ; 
 int MAX77802_STATUS_OFF ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int,int) ; 
 struct max77686_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 struct max77802_regulator_prv* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC6 (TYPE_2__*,TYPE_1__*,struct regulator_config*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct max77802_regulator_prv*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* regulators ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct max77686_dev *iodev = FUNC3(pdev->dev.parent);
	struct max77802_regulator_prv *max77802;
	int i, val;
	struct regulator_config config = { };

	max77802 = FUNC5(&pdev->dev,
				sizeof(struct max77802_regulator_prv),
				GFP_KERNEL);
	if (!max77802)
		return -ENOMEM;

	config.dev = iodev->dev;
	config.regmap = iodev->regmap;
	config.driver_data = max77802;
	FUNC8(pdev, max77802);

	for (i = 0; i < MAX77802_REG_MAX; i++) {
		struct regulator_dev *rdev;
		int id = regulators[i].id;
		int shift = FUNC7(id);
		int ret;

		ret = FUNC9(iodev->regmap, regulators[i].enable_reg, &val);
		if (ret < 0) {
			FUNC4(&pdev->dev,
				"cannot read current mode for %d\n", i);
			val = MAX77802_OPMODE_NORMAL;
		} else {
			val = val >> shift & MAX77802_OPMODE_MASK;
		}

		/*
		 * If the regulator is disabled and the system warm rebooted,
		 * the hardware reports OFF as the regulator operating mode.
		 * Default to operating mode NORMAL in that case.
		 */
		if (val == MAX77802_STATUS_OFF)
			max77802->opmode[id] = MAX77802_OPMODE_NORMAL;
		else
			max77802->opmode[id] = val;

		rdev = FUNC6(&pdev->dev,
					       &regulators[i], &config);
		if (FUNC0(rdev)) {
			ret = FUNC1(rdev);
			FUNC2(&pdev->dev,
				"regulator init failed for %d: %d\n", i, ret);
			return ret;
		}
	}

	return 0;
}