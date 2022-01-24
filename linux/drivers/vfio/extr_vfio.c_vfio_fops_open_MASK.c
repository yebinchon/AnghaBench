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
struct vfio_container {int /*<<< orphan*/  kref; int /*<<< orphan*/  group_lock; int /*<<< orphan*/  group_list; } ;
struct inode {int dummy; } ;
struct file {struct vfio_container* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vfio_container* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filep)
{
	struct vfio_container *container;

	container = FUNC3(sizeof(*container), GFP_KERNEL);
	if (!container)
		return -ENOMEM;

	FUNC0(&container->group_list);
	FUNC1(&container->group_lock);
	FUNC2(&container->kref);

	filep->private_data = container;

	return 0;
}