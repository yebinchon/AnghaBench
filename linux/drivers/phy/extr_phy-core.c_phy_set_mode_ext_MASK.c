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
struct TYPE_4__ {int mode; } ;
struct phy {int /*<<< orphan*/  mutex; TYPE_2__ attrs; TYPE_1__* ops; } ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;
struct TYPE_3__ {int (* set_mode ) (struct phy*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct phy*,int,int) ; 

int FUNC3(struct phy *phy, enum phy_mode mode, int submode)
{
	int ret;

	if (!phy || !phy->ops->set_mode)
		return 0;

	FUNC0(&phy->mutex);
	ret = phy->ops->set_mode(phy, mode, submode);
	if (!ret)
		phy->attrs.mode = mode;
	FUNC1(&phy->mutex);

	return ret;
}