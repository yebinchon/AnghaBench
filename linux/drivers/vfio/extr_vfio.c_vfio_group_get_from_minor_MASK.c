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
struct vfio_group {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  group_lock; int /*<<< orphan*/  group_idr; } ;

/* Variables and functions */
 struct vfio_group* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vfio ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_group*) ; 

__attribute__((used)) static struct vfio_group *FUNC4(int minor)
{
	struct vfio_group *group;

	FUNC1(&vfio.group_lock);
	group = FUNC0(&vfio.group_idr, minor);
	if (!group) {
		FUNC2(&vfio.group_lock);
		return NULL;
	}
	FUNC3(group);
	FUNC2(&vfio.group_lock);

	return group;
}