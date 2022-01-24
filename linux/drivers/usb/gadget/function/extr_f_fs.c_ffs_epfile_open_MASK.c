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
struct inode {struct ffs_epfile* i_private; } ;
struct file {struct ffs_epfile* private_data; } ;
struct ffs_epfile {TYPE_1__* ffs; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FFS_ACTIVE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, struct file *file)
{
	struct ffs_epfile *epfile = inode->i_private;

	FUNC0();

	if (FUNC1(epfile->ffs->state != FFS_ACTIVE))
		return -ENODEV;

	file->private_data = epfile;
	FUNC2(epfile->ffs);

	return 0;
}