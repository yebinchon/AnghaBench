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
typedef  int umode_t ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct autofs_sb_info {int flags; int version; } ;
struct autofs_info {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int AUTOFS_SBI_CATATONIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct autofs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct autofs_info* FUNC5 (struct dentry*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct dentry*,struct dentry*) ; 

__attribute__((used)) static int FUNC15(struct inode *dir,
			    struct dentry *dentry, umode_t mode)
{
	struct autofs_sb_info *sbi = FUNC8(dir->i_sb);
	struct autofs_info *ino = FUNC5(dentry);
	struct autofs_info *p_ino;
	struct inode *inode;

	if (!FUNC7(sbi))
		return -EACCES;

	/* autofs_oz_mode() needs to allow path walks when the
	 * autofs mount is catatonic but the state of an autofs
	 * file system needs to be preserved over restarts.
	 */
	if (sbi->flags & AUTOFS_SBI_CATATONIC)
		return -EACCES;

	FUNC14("dentry %p, creating %pd\n", dentry, dentry);

	FUNC0(!ino);

	FUNC3(ino);

	FUNC4(dentry);

	inode = FUNC6(dir->i_sb, S_IFDIR | mode);
	if (!inode)
		return -ENOMEM;
	FUNC11(dentry, inode);

	if (sbi->version < 5)
		FUNC9(dentry);

	FUNC12(dentry);
	FUNC2(&ino->count);
	p_ino = FUNC5(dentry->d_parent);
	if (p_ino && !FUNC1(dentry))
		FUNC2(&p_ino->count);
	FUNC13(dir);
	dir->i_mtime = FUNC10(dir);

	return 0;
}