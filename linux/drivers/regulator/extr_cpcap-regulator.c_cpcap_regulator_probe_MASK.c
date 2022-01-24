#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {void* driver_data; scalar_t__ regmap; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_7__ {scalar_t__ volt_table; int /*<<< orphan*/  name; } ;
typedef  struct cpcap_regulator {TYPE_3__ rdesc; } const cpcap_regulator ;
struct cpcap_ddata {struct cpcap_regulator const* soc; scalar_t__ reg; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int CPCAP_NR_REGULATORS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cpcap_ddata* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (TYPE_1__*,TYPE_3__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct regulator_config*,int /*<<< orphan*/ ,int) ; 
 struct cpcap_regulator const* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct cpcap_ddata*) ; 
 scalar_t__ unknown_val_tbl ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct cpcap_ddata *ddata;
	const struct cpcap_regulator *match_data;
	struct regulator_config config;
	int i;

	match_data = FUNC7(&pdev->dev);
	if (!match_data) {
		FUNC2(&pdev->dev, "no configuration data found\n");

		return -ENODEV;
	}

	ddata = FUNC4(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	ddata->reg = FUNC3(pdev->dev.parent, NULL);
	if (!ddata->reg)
		return -ENODEV;

	ddata->dev = &pdev->dev;
	ddata->soc = match_data;
	FUNC8(pdev, ddata);

	FUNC6(&config, 0, sizeof(config));
	config.dev = &pdev->dev;
	config.regmap = ddata->reg;

	for (i = 0; i < CPCAP_NR_REGULATORS; i++) {
		const struct cpcap_regulator *regulator = &ddata->soc[i];
		struct regulator_dev *rdev;

		if (!regulator->rdesc.name)
			break;

		if (regulator->rdesc.volt_table == unknown_val_tbl)
			continue;

		config.driver_data = (void *)regulator;
		rdev = FUNC5(&pdev->dev,
					       &regulator->rdesc,
					       &config);
		if (FUNC0(rdev)) {
			FUNC2(&pdev->dev, "failed to register regulator %s\n",
				regulator->rdesc.name);

			return FUNC1(rdev);
		}
	}

	return 0;
}