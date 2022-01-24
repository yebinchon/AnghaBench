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
struct phy {int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* calibrate ) (struct phy*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct phy*) ; 

int FUNC3(struct phy *phy)
{
	int ret;

	if (!phy || !phy->ops->calibrate)
		return 0;

	FUNC0(&phy->mutex);
	ret = phy->ops->calibrate(phy);
	FUNC1(&phy->mutex);

	return ret;
}