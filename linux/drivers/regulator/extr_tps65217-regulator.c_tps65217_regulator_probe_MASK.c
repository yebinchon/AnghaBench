#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct tps65217_board {int /*<<< orphan*/ * tps65217_init_data; } ;
struct tps65217 {unsigned int* strobes; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct tps65217* driver_data; int /*<<< orphan*/  init_data; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_2__ dev; } ;
struct TYPE_5__ {unsigned int bypass_mask; int /*<<< orphan*/  bypass_reg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int TPS65217_NUM_REGULATOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct tps65217* FUNC3 (int /*<<< orphan*/ ) ; 
 struct tps65217_board* FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int* FUNC5 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC6 (TYPE_2__*,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct tps65217*) ; 
 TYPE_1__* regulators ; 
 int FUNC8 (struct tps65217*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct tps65217 *tps = FUNC3(pdev->dev.parent);
	struct tps65217_board *pdata = FUNC4(tps->dev);
	struct regulator_dev *rdev;
	struct regulator_config config = { };
	int i, ret;
	unsigned int val;

	/* Allocate memory for strobes */
	tps->strobes = FUNC5(&pdev->dev,
				    TPS65217_NUM_REGULATOR, sizeof(u8),
				    GFP_KERNEL);
	if (!tps->strobes)
		return -ENOMEM;

	FUNC7(pdev, tps);

	for (i = 0; i < TPS65217_NUM_REGULATOR; i++) {
		/* Register the regulators */
		config.dev = tps->dev;
		if (pdata)
			config.init_data = pdata->tps65217_init_data[i];
		config.driver_data = tps;
		config.regmap = tps->regmap;

		rdev = FUNC6(&pdev->dev, &regulators[i],
					       &config);
		if (FUNC0(rdev)) {
			FUNC2(tps->dev, "failed to register %s regulator\n",
				pdev->name);
			return FUNC1(rdev);
		}

		/* Store default strobe info */
		ret = FUNC8(tps, regulators[i].bypass_reg, &val);
		tps->strobes[i] = val & regulators[i].bypass_mask;
	}

	return 0;
}