#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct lp8788_bl {int /*<<< orphan*/  bl_dev; int /*<<< orphan*/  pdata; struct lp8788* lp; } ;
struct lp8788 {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  bl_pdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct lp8788* FUNC2 (int /*<<< orphan*/ ) ; 
 struct lp8788_bl* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lp8788_attr_group ; 
 int FUNC4 (struct lp8788_bl*) ; 
 int FUNC5 (struct lp8788_bl*) ; 
 int /*<<< orphan*/  FUNC6 (struct lp8788_bl*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct lp8788_bl*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct lp8788 *lp = FUNC2(pdev->dev.parent);
	struct lp8788_bl *bl;
	int ret;

	bl = FUNC3(lp->dev, sizeof(struct lp8788_bl), GFP_KERNEL);
	if (!bl)
		return -ENOMEM;

	bl->lp = lp;
	if (lp->pdata)
		bl->pdata = lp->pdata->bl_pdata;

	FUNC7(pdev, bl);

	ret = FUNC4(bl);
	if (ret) {
		FUNC1(lp->dev, "backlight config err: %d\n", ret);
		goto err_dev;
	}

	ret = FUNC5(bl);
	if (ret) {
		FUNC1(lp->dev, "register backlight err: %d\n", ret);
		goto err_dev;
	}

	ret = FUNC8(&pdev->dev.kobj, &lp8788_attr_group);
	if (ret) {
		FUNC1(lp->dev, "register sysfs err: %d\n", ret);
		goto err_sysfs;
	}

	FUNC0(bl->bl_dev);

	return 0;

err_sysfs:
	FUNC6(bl);
err_dev:
	return ret;
}