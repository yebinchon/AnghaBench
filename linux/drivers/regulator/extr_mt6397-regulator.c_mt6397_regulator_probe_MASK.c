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
typedef  int u32 ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; TYPE_1__* driver_data; TYPE_2__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mt6397_chip {int /*<<< orphan*/  regmap; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  volt_table; } ;
struct TYPE_6__ {TYPE_3__ desc; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  MT6397_CID ; 
 size_t MT6397_ID_VGP2 ; 
 int MT6397_MAX_REGULATOR ; 
#define  MT6397_REGULATOR_ID91 128 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct mt6397_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 struct regulator_dev* FUNC5 (TYPE_2__*,TYPE_3__*,struct regulator_config*) ; 
 int /*<<< orphan*/  ldo_volt_table5_v2 ; 
 TYPE_1__* mt6397_regulators ; 
 scalar_t__ FUNC6 (struct platform_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mt6397_chip *mt6397 = FUNC3(pdev->dev.parent);
	struct regulator_config config = {};
	struct regulator_dev *rdev;
	int i;
	u32 reg_value, version;

	/* Query buck controller to select activated voltage register part */
	if (FUNC6(pdev))
		return -EIO;

	/* Read PMIC chip revision to update constraints and voltage table */
	if (FUNC7(mt6397->regmap, MT6397_CID, &reg_value) < 0) {
		FUNC2(&pdev->dev, "Failed to read Chip ID\n");
		return -EIO;
	}
	FUNC4(&pdev->dev, "Chip ID = 0x%x\n", reg_value);

	version = (reg_value & 0xFF);
	switch (version) {
	case MT6397_REGULATOR_ID91:
		mt6397_regulators[MT6397_ID_VGP2].desc.volt_table =
		ldo_volt_table5_v2;
		break;
	default:
		break;
	}

	for (i = 0; i < MT6397_MAX_REGULATOR; i++) {
		config.dev = &pdev->dev;
		config.driver_data = &mt6397_regulators[i];
		config.regmap = mt6397->regmap;
		rdev = FUNC5(&pdev->dev,
				&mt6397_regulators[i].desc, &config);
		if (FUNC0(rdev)) {
			FUNC2(&pdev->dev, "failed to register %s\n",
				mt6397_regulators[i].desc.name);
			return FUNC1(rdev);
		}
	}

	return 0;
}