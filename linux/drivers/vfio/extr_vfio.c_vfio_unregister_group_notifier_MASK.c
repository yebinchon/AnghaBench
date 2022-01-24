#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfio_group {int /*<<< orphan*/  notifier; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int FUNC1 (struct vfio_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_group*) ; 

__attribute__((used)) static int FUNC3(struct vfio_group *group,
					 struct notifier_block *nb)
{
	int ret;

	ret = FUNC1(group);
	if (ret)
		return -EINVAL;

	ret = FUNC0(&group->notifier, nb);

	FUNC2(group);

	return ret;
}