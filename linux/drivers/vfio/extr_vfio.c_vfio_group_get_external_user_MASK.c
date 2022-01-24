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
struct vfio_group {int dummy; } ;
struct file {int /*<<< orphan*/ * f_op; struct vfio_group* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vfio_group* FUNC0 (int) ; 
 int FUNC1 (struct vfio_group*) ; 
 int /*<<< orphan*/  vfio_group_fops ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_group*) ; 

struct vfio_group *FUNC3(struct file *filep)
{
	struct vfio_group *group = filep->private_data;
	int ret;

	if (filep->f_op != &vfio_group_fops)
		return FUNC0(-EINVAL);

	ret = FUNC1(group);
	if (ret)
		return FUNC0(ret);

	FUNC2(group);

	return group;
}