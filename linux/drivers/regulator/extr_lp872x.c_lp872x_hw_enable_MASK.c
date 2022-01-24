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
struct lp872x {scalar_t__ chipid; int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int enable_gpio; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 scalar_t__ LP8720 ; 
 double LP8720_ENABLE_DELAY ; 
 double LP8725_ENABLE_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (double,double) ; 

__attribute__((used)) static int FUNC4(struct lp872x *lp)
{
	int ret, gpio;

	if (!lp->pdata)
		return -EINVAL;

	gpio = lp->pdata->enable_gpio;
	if (!FUNC2(gpio))
		return 0;

	/* Always set enable GPIO high. */
	ret = FUNC1(lp->dev, gpio, GPIOF_OUT_INIT_HIGH, "LP872X EN");
	if (ret) {
		FUNC0(lp->dev, "gpio request err: %d\n", ret);
		return ret;
	}

	/* Each chip has a different enable delay. */
	if (lp->chipid == LP8720)
		FUNC3(LP8720_ENABLE_DELAY, 1.5 * LP8720_ENABLE_DELAY);
	else
		FUNC3(LP8725_ENABLE_DELAY, 1.5 * LP8725_ENABLE_DELAY);

	return 0;
}