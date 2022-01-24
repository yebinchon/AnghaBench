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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct autofs_sb_info {int flags; int version; int /*<<< orphan*/  lookup_lock; } ;
struct autofs_info {int /*<<< orphan*/  dentry; int /*<<< orphan*/  count; } ;
struct TYPE_3__ {scalar_t__ i_size; } ;

/* Variables and functions */
 int AUTOFS_SBI_CATATONIC ; 
 int EACCES ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct autofs_info* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 TYPE_1__* FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC6(dir->i_sb);
	struct autofs_info *ino = FUNC4(dentry);
	struct autofs_info *p_ino;

	FUNC12("dentry %p, removing %pd\n", dentry, dentry);

	if (!FUNC5(sbi))
		return -EACCES;

	/* autofs_oz_mode() needs to allow path walks when the
	 * autofs mount is catatonic but the state of an autofs
	 * file system needs to be preserved over restarts.
	 */
	if (sbi->flags & AUTOFS_SBI_CATATONIC)
		return -EACCES;

	FUNC14(&sbi->lookup_lock);
	if (!FUNC13(dentry)) {
		FUNC15(&sbi->lookup_lock);
		return -ENOTEMPTY;
	}
	FUNC0(dentry);
	FUNC8(dentry);
	FUNC15(&sbi->lookup_lock);

	if (sbi->version < 5)
		FUNC3(dentry);

	if (FUNC2(&ino->count)) {
		p_ino = FUNC4(dentry->d_parent);
		if (p_ino && dentry->d_parent != dentry)
			FUNC1(&p_ino->count);
	}
	FUNC10(ino->dentry);
	FUNC9(dentry)->i_size = 0;
	FUNC7(FUNC9(dentry));

	if (dir->i_nlink)
		FUNC11(dir);

	return 0;
}