#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct pcf50633* driver_data; int /*<<< orphan*/  init_data; TYPE_2__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {size_t id; TYPE_2__ dev; } ;
struct pcf50633 {TYPE_1__* pdata; int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* regulator_registered ) (struct pcf50633*,size_t) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct pcf50633* FUNC3 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct regulator_dev*) ; 
 int /*<<< orphan*/ * regulators ; 
 int /*<<< orphan*/  FUNC6 (struct pcf50633*,size_t) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct regulator_dev *rdev;
	struct pcf50633 *pcf;
	struct regulator_config config = { };

	/* Already set by core driver */
	pcf = FUNC3(pdev->dev.parent);

	config.dev = &pdev->dev;
	config.init_data = FUNC2(&pdev->dev);
	config.driver_data = pcf;
	config.regmap = pcf->regmap;

	rdev = FUNC4(&pdev->dev, &regulators[pdev->id],
				       &config);
	if (FUNC0(rdev))
		return FUNC1(rdev);

	FUNC5(pdev, rdev);

	if (pcf->pdata->regulator_registered)
		pcf->pdata->regulator_registered(pcf, pdev->id);

	return 0;
}