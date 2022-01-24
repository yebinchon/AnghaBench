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
struct vfio_group {int /*<<< orphan*/  opened; } ;
struct inode {int dummy; } ;
struct file {struct vfio_group* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_group*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filep)
{
	struct vfio_group *group = filep->private_data;

	filep->private_data = NULL;

	FUNC2(group);

	FUNC0(&group->opened);

	FUNC1(group);

	return 0;
}