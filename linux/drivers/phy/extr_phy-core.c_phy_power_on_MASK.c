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
struct phy {scalar_t__ power_count; scalar_t__ pwr; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power_on ) (struct phy*) ;} ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (struct phy*) ; 

int FUNC8(struct phy *phy)
{
	int ret = 0;

	if (!phy)
		goto out;

	if (phy->pwr) {
		ret = FUNC6(phy->pwr);
		if (ret)
			goto out;
	}

	ret = FUNC3(phy);
	if (ret < 0 && ret != -ENOTSUPP)
		goto err_pm_sync;

	ret = 0; /* Override possible ret == -ENOTSUPP */

	FUNC1(&phy->mutex);
	if (phy->power_count == 0 && phy->ops->power_on) {
		ret = phy->ops->power_on(phy);
		if (ret < 0) {
			FUNC0(&phy->dev, "phy poweron failed --> %d\n", ret);
			goto err_pwr_on;
		}
	}
	++phy->power_count;
	FUNC2(&phy->mutex);
	return 0;

err_pwr_on:
	FUNC2(&phy->mutex);
	FUNC4(phy);
err_pm_sync:
	if (phy->pwr)
		FUNC5(phy->pwr);
out:
	return ret;
}