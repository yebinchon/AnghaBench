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
struct sec_pmic_dev {int /*<<< orphan*/  regmap_pmic; int /*<<< orphan*/  dev; } ;
struct sec_platform_data {TYPE_1__* regulators; } ;
struct s2mpa01_info {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  init_data; struct s2mpa01_info* driver_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  initdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int S2MPA01_REGULATOR_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 struct sec_pmic_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sec_platform_data* FUNC4 (int /*<<< orphan*/ ) ; 
 struct s2mpa01_info* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/ * regulators ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct sec_pmic_dev *iodev = FUNC3(pdev->dev.parent);
	struct sec_platform_data *pdata = FUNC4(iodev->dev);
	struct regulator_config config = { };
	struct s2mpa01_info *s2mpa01;
	int i;

	s2mpa01 = FUNC5(&pdev->dev, sizeof(*s2mpa01), GFP_KERNEL);
	if (!s2mpa01)
		return -ENOMEM;

	config.dev = iodev->dev;
	config.regmap = iodev->regmap_pmic;
	config.driver_data = s2mpa01;

	for (i = 0; i < S2MPA01_REGULATOR_MAX; i++) {
		struct regulator_dev *rdev;

		if (pdata)
			config.init_data = pdata->regulators[i].initdata;

		rdev = FUNC6(&pdev->dev,
						&regulators[i], &config);
		if (FUNC0(rdev)) {
			FUNC2(&pdev->dev, "regulator init failed for %d\n",
				i);
			return FUNC1(rdev);
		}
	}

	return 0;
}