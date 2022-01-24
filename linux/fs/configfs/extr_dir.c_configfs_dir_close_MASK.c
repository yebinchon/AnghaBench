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
struct inode {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {struct configfs_dirent* private_data; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
struct configfs_dirent {int /*<<< orphan*/  s_sibling; } ;

/* Variables and functions */
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct dentry * dentry = file->f_path.dentry;
	struct configfs_dirent * cursor = file->private_data;

	FUNC1(FUNC0(dentry));
	FUNC5(&configfs_dirent_lock);
	FUNC3(&cursor->s_sibling);
	FUNC6(&configfs_dirent_lock);
	FUNC2(FUNC0(dentry));

	FUNC4(cursor);

	return 0;
}