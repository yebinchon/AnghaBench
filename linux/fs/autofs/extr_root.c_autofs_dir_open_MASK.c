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
struct file {TYPE_1__ f_path; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  lookup_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct file*,struct dentry*,struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;
	struct autofs_sb_info *sbi = FUNC1(dentry->d_sb);

	FUNC4("file=%p dentry=%p %pd\n", file, dentry, dentry);

	if (FUNC0(sbi))
		goto out;

	/*
	 * An empty directory in an autofs file system is always a
	 * mount point. The daemon must have failed to mount this
	 * during lookup so it doesn't exist. This can happen, for
	 * example, if user space returns an incorrect status for a
	 * mount request. Otherwise we're doing a readdir on the
	 * autofs file system so just let the libfs routines handle
	 * it.
	 */
	FUNC6(&sbi->lookup_lock);
	if (!FUNC3(&file->f_path) && FUNC5(dentry)) {
		FUNC7(&sbi->lookup_lock);
		return -ENOENT;
	}
	FUNC7(&sbi->lookup_lock);

out:
	return FUNC2(inode, file);
}