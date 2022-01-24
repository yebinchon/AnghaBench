#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {int /*<<< orphan*/  of_node; struct bd70528_psy* drv_data; } ;
struct TYPE_5__ {TYPE_3__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bd70528_psy {int /*<<< orphan*/  psy; TYPE_1__* dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bd70528_charger_desc ; 
 int FUNC2 (struct platform_device*,struct bd70528_psy*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct bd70528_psy* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct bd70528_psy*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct bd70528_psy *bdpsy;
	struct power_supply_config cfg = {};

	bdpsy = FUNC5(&pdev->dev, sizeof(*bdpsy), GFP_KERNEL);
	if (!bdpsy)
		return -ENOMEM;

	bdpsy->regmap = FUNC4(pdev->dev.parent, NULL);
	if (!bdpsy->regmap) {
		FUNC3(&pdev->dev, "No regmap found for chip\n");
		return -EINVAL;
	}
	bdpsy->dev = &pdev->dev;

	FUNC7(pdev, bdpsy);
	cfg.drv_data = bdpsy;
	cfg.of_node = pdev->dev.parent->of_node;

	bdpsy->psy = FUNC6(&pdev->dev,
						&bd70528_charger_desc, &cfg);
	if (FUNC0(bdpsy->psy)) {
		FUNC3(&pdev->dev, "failed: power supply register\n");
		return FUNC1(bdpsy->psy);
	}

	return FUNC2(pdev, bdpsy);
}