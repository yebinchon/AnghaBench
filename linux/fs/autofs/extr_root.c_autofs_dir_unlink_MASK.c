#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct autofs_sb_info {int flags; int /*<<< orphan*/  lookup_lock; } ;
struct autofs_info {int /*<<< orphan*/  dentry; int /*<<< orphan*/  count; } ;
struct TYPE_3__ {scalar_t__ i_size; } ;

/* Variables and functions */
 int AUTOFS_SBI_CATATONIC ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct autofs_info* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 TYPE_1__* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC6(dir->i_sb);
	struct autofs_info *ino = FUNC4(dentry);
	struct autofs_info *p_ino;

	if (!FUNC5(sbi))
		return -EACCES;

	/* autofs_oz_mode() needs to allow path walks when the
	 * autofs mount is catatonic but the state of an autofs
	 * file system needs to be preserved over restarts.
	 */
	if (sbi->flags & AUTOFS_SBI_CATATONIC)
		return -EACCES;

	if (FUNC3(&ino->count)) {
		p_ino = FUNC4(dentry->d_parent);
		if (p_ino && !FUNC0(dentry))
			FUNC2(&p_ino->count);
	}
	FUNC11(ino->dentry);

	FUNC10(dentry)->i_size = 0;
	FUNC7(FUNC10(dentry));

	dir->i_mtime = FUNC8(dir);

	FUNC12(&sbi->lookup_lock);
	FUNC1(dentry);
	FUNC9(dentry);
	FUNC13(&sbi->lookup_lock);

	return 0;
}