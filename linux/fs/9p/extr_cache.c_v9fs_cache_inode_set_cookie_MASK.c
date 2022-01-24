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
struct v9fs_inode {int /*<<< orphan*/  fscache_lock; int /*<<< orphan*/  fscache; } ;
struct inode {int dummy; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int O_ACCMODE ; 
 int O_RDONLY ; 
 struct v9fs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

void FUNC5(struct inode *inode, struct file *filp)
{
	struct v9fs_inode *v9inode = FUNC0(inode);

	if (!v9inode->fscache)
		return;

	FUNC1(&v9inode->fscache_lock);

	if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
		FUNC3(inode);
	else
		FUNC4(inode);

	FUNC2(&v9inode->fscache_lock);
}