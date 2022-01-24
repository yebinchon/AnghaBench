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
struct vfio_group_put_work {int /*<<< orphan*/  work; struct vfio_group* group; } ;
struct vfio_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct vfio_group_put_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfio_group_put_bg ; 

__attribute__((used)) static void FUNC4(struct vfio_group *group)
{
	struct vfio_group_put_work *do_work;

	do_work = FUNC2(sizeof(*do_work), GFP_KERNEL);
	if (FUNC1(!do_work))
		return;

	FUNC0(&do_work->work, vfio_group_put_bg);
	do_work->group = group;
	FUNC3(&do_work->work);
}