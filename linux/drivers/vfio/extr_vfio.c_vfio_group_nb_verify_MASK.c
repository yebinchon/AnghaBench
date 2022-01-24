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
struct vfio_group {int /*<<< orphan*/  container_users; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*,struct vfio_group*) ; 

__attribute__((used)) static int FUNC2(struct vfio_group *group, struct device *dev)
{
	/* We don't care what happens when the group isn't in use */
	if (!FUNC0(&group->container_users))
		return 0;

	return FUNC1(dev, group);
}