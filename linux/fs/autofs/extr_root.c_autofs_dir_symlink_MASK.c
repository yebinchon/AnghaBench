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
struct inode {char* i_private; size_t i_size; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct autofs_sb_info {int flags; } ;
struct autofs_info {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int AUTOFS_SBI_CATATONIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct autofs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct autofs_info* FUNC5 (struct dentry*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 size_t FUNC16 (char const*) ; 

__attribute__((used)) static int FUNC17(struct inode *dir,
			       struct dentry *dentry,
			       const char *symname)
{
	struct autofs_sb_info *sbi = FUNC8(dir->i_sb);
	struct autofs_info *ino = FUNC5(dentry);
	struct autofs_info *p_ino;
	struct inode *inode;
	size_t size = FUNC16(symname);
	char *cp;

	FUNC14("%s <- %pd\n", symname, dentry);

	if (!FUNC7(sbi))
		return -EACCES;

	/* autofs_oz_mode() needs to allow path walks when the
	 * autofs mount is catatonic but the state of an autofs
	 * file system needs to be preserved over restarts.
	 */
	if (sbi->flags & AUTOFS_SBI_CATATONIC)
		return -EACCES;

	FUNC0(!ino);

	FUNC3(ino);

	FUNC4(dentry);

	cp = FUNC13(size + 1, GFP_KERNEL);
	if (!cp)
		return -ENOMEM;

	FUNC15(cp, symname);

	inode = FUNC6(dir->i_sb, S_IFLNK | 0555);
	if (!inode) {
		FUNC12(cp);
		return -ENOMEM;
	}
	inode->i_private = cp;
	inode->i_size = size;
	FUNC10(dentry, inode);

	FUNC11(dentry);
	FUNC2(&ino->count);
	p_ino = FUNC5(dentry->d_parent);
	if (p_ino && !FUNC1(dentry))
		FUNC2(&p_ino->count);

	dir->i_mtime = FUNC9(dir);

	return 0;
}