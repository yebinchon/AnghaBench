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
typedef  union phy_configure_opts {int dummy; } phy_configure_opts ;
struct phy {int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;
struct TYPE_2__ {int (* validate ) (struct phy*,int,int,union phy_configure_opts*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct phy*,int,int,union phy_configure_opts*) ; 

int FUNC3(struct phy *phy, enum phy_mode mode, int submode,
		 union phy_configure_opts *opts)
{
	int ret;

	if (!phy)
		return -EINVAL;

	if (!phy->ops->validate)
		return -EOPNOTSUPP;

	FUNC0(&phy->mutex);
	ret = phy->ops->validate(phy, mode, submode, opts);
	FUNC1(&phy->mutex);

	return ret;
}