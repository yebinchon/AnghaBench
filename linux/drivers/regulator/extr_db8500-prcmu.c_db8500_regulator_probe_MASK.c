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
struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct regulator_init_data* init_data; int /*<<< orphan*/ * dev; struct dbx500_regulator_info* driver_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dbx500_regulator_info {TYPE_1__ desc; } ;

/* Variables and functions */
 int FUNC0 (struct dbx500_regulator_info*) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 struct dbx500_regulator_info* dbx500_regulator_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct regulator_init_data* FUNC5 (int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct dbx500_regulator_info*,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct regulator_init_data *db8500_init_data;
	struct dbx500_regulator_info *info;
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	int err, i;

	db8500_init_data = FUNC5(&pdev->dev);

	for (i = 0; i < FUNC0(dbx500_regulator_info); i++) {
		/* assign per-regulator data */
		info = &dbx500_regulator_info[i];

		config.driver_data = info;
		config.dev = &pdev->dev;
		if (db8500_init_data)
			config.init_data = &db8500_init_data[i];

		rdev = FUNC6(&pdev->dev, &info->desc,
					       &config);
		if (FUNC1(rdev)) {
			err = FUNC2(rdev);
			FUNC4(&pdev->dev, "failed to register %s: err %i\n",
				info->desc.name, err);
			return err;
		}
		FUNC3(&pdev->dev, "regulator-%s-probed\n", info->desc.name);
	}

	FUNC7(pdev, dbx500_regulator_info,
				   FUNC0(dbx500_regulator_info));
	return 0;
}