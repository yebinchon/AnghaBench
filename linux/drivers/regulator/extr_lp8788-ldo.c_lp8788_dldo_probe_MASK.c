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
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  regmap; struct lp8788_ldo* driver_data; int /*<<< orphan*/ * init_data; int /*<<< orphan*/  dev; scalar_t__ ena_gpiod; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct lp8788_ldo {struct regulator_dev* regulator; scalar_t__ ena_gpiod; struct lp8788* lp; } ;
struct lp8788 {int /*<<< orphan*/  regmap; TYPE_1__* pdata; } ;
struct TYPE_5__ {int /*<<< orphan*/ ** dldo_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int,int) ; 
 struct lp8788* FUNC3 (int /*<<< orphan*/ ) ; 
 struct lp8788_ldo* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int FUNC6 (struct platform_device*,struct lp8788_ldo*,int) ; 
 int /*<<< orphan*/ * lp8788_dldo_desc ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct lp8788_ldo*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct lp8788 *lp = FUNC3(pdev->dev.parent);
	int id = pdev->id;
	struct lp8788_ldo *ldo;
	struct regulator_config cfg = { };
	struct regulator_dev *rdev;
	int ret;

	ldo = FUNC4(&pdev->dev, sizeof(struct lp8788_ldo), GFP_KERNEL);
	if (!ldo)
		return -ENOMEM;

	ldo->lp = lp;
	ret = FUNC6(pdev, ldo, id);
	if (ret)
		return ret;

	if (ldo->ena_gpiod)
		cfg.ena_gpiod = ldo->ena_gpiod;

	cfg.dev = pdev->dev.parent;
	cfg.init_data = lp->pdata ? lp->pdata->dldo_data[id] : NULL;
	cfg.driver_data = ldo;
	cfg.regmap = lp->regmap;

	rdev = FUNC5(&pdev->dev, &lp8788_dldo_desc[id], &cfg);
	if (FUNC0(rdev)) {
		ret = FUNC1(rdev);
		FUNC2(&pdev->dev, "DLDO%d regulator register err = %d\n",
				id + 1, ret);
		return ret;
	}

	ldo->regulator = rdev;
	FUNC7(pdev, ldo);

	return 0;
}