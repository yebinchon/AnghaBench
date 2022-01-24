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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfio_group*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vfio_group *group)
{
	if (0 == FUNC1(&group->container_users))
		FUNC0(group);
}