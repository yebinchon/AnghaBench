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
struct phy {int init_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* exit ) (struct phy*) ;} ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy*) ; 
 int FUNC5 (struct phy*) ; 

int FUNC6(struct phy *phy)
{
	int ret;

	if (!phy)
		return 0;

	ret = FUNC3(phy);
	if (ret < 0 && ret != -ENOTSUPP)
		return ret;
	ret = 0; /* Override possible ret == -ENOTSUPP */

	FUNC1(&phy->mutex);
	if (phy->init_count == 1 && phy->ops->exit) {
		ret = phy->ops->exit(phy);
		if (ret < 0) {
			FUNC0(&phy->dev, "phy exit failed --> %d\n", ret);
			goto out;
		}
	}
	--phy->init_count;

out:
	FUNC2(&phy->mutex);
	FUNC4(phy);
	return ret;
}