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
struct inode {int dummy; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int O_EXCL ; 
 int FUNC0 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ xen_mce_chrdev_open_count ; 
 int xen_mce_chrdev_open_exclu ; 
 int /*<<< orphan*/  xen_mce_chrdev_state_lock ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	FUNC1(&xen_mce_chrdev_state_lock);

	if (xen_mce_chrdev_open_exclu ||
	    (xen_mce_chrdev_open_count && (file->f_flags & O_EXCL))) {
		FUNC2(&xen_mce_chrdev_state_lock);

		return -EBUSY;
	}

	if (file->f_flags & O_EXCL)
		xen_mce_chrdev_open_exclu = 1;
	xen_mce_chrdev_open_count++;

	FUNC2(&xen_mce_chrdev_state_lock);

	return FUNC0(inode, file);
}