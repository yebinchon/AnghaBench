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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct lp8788_charger {int /*<<< orphan*/ * pdata; struct lp8788* lp; } ;
struct lp8788 {TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/ * chg_pdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct lp8788* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct lp8788_charger* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct platform_device*,struct lp8788_charger*) ; 
 int FUNC4 (struct platform_device*,struct lp8788_charger*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct lp8788_charger*) ; 
 int FUNC6 (struct platform_device*,struct lp8788_charger*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct lp8788_charger*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct lp8788 *lp = FUNC0(pdev->dev.parent);
	struct lp8788_charger *pchg;
	struct device *dev = &pdev->dev;
	int ret;

	pchg = FUNC2(dev, sizeof(struct lp8788_charger), GFP_KERNEL);
	if (!pchg)
		return -ENOMEM;

	pchg->lp = lp;
	pchg->pdata = lp->pdata ? lp->pdata->chg_pdata : NULL;
	FUNC7(pdev, pchg);

	ret = FUNC6(pdev, pchg);
	if (ret)
		return ret;

	FUNC5(&pdev->dev, pchg);

	ret = FUNC4(pdev, pchg);
	if (ret)
		return ret;

	ret = FUNC3(pdev, pchg);
	if (ret)
		FUNC1(dev, "failed to register charger irq: %d\n", ret);

	return 0;
}