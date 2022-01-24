#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*,struct buffer_head*) ; 
 int EIO ; 
 struct buffer_head* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct buffer_head*) ; 
 int FUNC5 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 TYPE_1__* FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*,struct inode*) ; 

__attribute__((used)) static int
FUNC11(struct inode *old_dir, struct dentry *old_dentry,
	     struct inode *new_dir, struct dentry *new_dentry)
{

	struct super_block *sb = old_dir->i_sb;
	struct buffer_head *bh_old = NULL;
	struct buffer_head *bh_new = NULL;
	int retval;

	bh_old = FUNC1(sb, FUNC9(old_dentry)->i_ino);
	if (!bh_old)
		return -EIO;

	bh_new = FUNC1(sb, FUNC9(new_dentry)->i_ino);
	if (!bh_new)
		return -EIO;

	/* Remove old header from its parent directory. */
	FUNC6(old_dir);
	retval = FUNC7(old_dir, bh_old);
	FUNC8(old_dir);
	if (retval)
		goto done;

	/* Remove new header from its parent directory. */
	FUNC6(new_dir);
	retval = FUNC7(new_dir, bh_new);
	FUNC8(new_dir);
	if (retval)
		goto done;

	/* Insert old into the new directory with the new name. */
	FUNC3(FUNC0(sb, bh_old)->name, new_dentry);
	FUNC4(sb, bh_old);
	FUNC6(new_dir);
	retval = FUNC5(new_dir, bh_old);
	FUNC8(new_dir);

	/* Insert new into the old directory with the old name. */
	FUNC3(FUNC0(sb, bh_new)->name, old_dentry);
	FUNC4(sb, bh_new);
	FUNC6(old_dir);
	retval = FUNC5(old_dir, bh_new);
	FUNC8(old_dir);
done:
	FUNC10(bh_old, new_dir);
	FUNC10(bh_new, old_dir);
	FUNC2(bh_old);
	FUNC2(bh_new);
	return retval;
}