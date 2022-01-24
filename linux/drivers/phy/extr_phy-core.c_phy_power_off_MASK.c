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
struct phy {int power_count; scalar_t__ pwr; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power_off ) (struct phy*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct phy*) ; 

int FUNC6(struct phy *phy)
{
	int ret;

	if (!phy)
		return 0;

	FUNC1(&phy->mutex);
	if (phy->power_count == 1 && phy->ops->power_off) {
		ret =  phy->ops->power_off(phy);
		if (ret < 0) {
			FUNC0(&phy->dev, "phy poweroff failed --> %d\n", ret);
			FUNC2(&phy->mutex);
			return ret;
		}
	}
	--phy->power_count;
	FUNC2(&phy->mutex);
	FUNC3(phy);

	if (phy->pwr)
		FUNC4(phy->pwr);

	return 0;
}