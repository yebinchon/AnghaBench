#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct super_block*,struct buffer_head*) ; 
 int EIO ; 
 struct buffer_head* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct buffer_head*) ; 
 int FUNC6 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int FUNC9 (struct inode*,struct buffer_head*) ; 
 int FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 TYPE_2__* FUNC12 (struct dentry*) ; 
 scalar_t__ FUNC13 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*,struct inode*) ; 

__attribute__((used)) static int
FUNC15(struct inode *old_dir, struct dentry *old_dentry,
	    struct inode *new_dir, struct dentry *new_dentry)
{
	struct super_block *sb = old_dir->i_sb;
	struct buffer_head *bh = NULL;
	int retval;

	retval = FUNC3(new_dentry->d_name.name,
				 new_dentry->d_name.len,
				 FUNC8(old_dentry));

	if (retval)
		return retval;

	/* Unlink destination if it already exists */
	if (FUNC13(new_dentry)) {
		retval = FUNC10(new_dentry);
		if (retval)
			return retval;
	}

	bh = FUNC1(sb, FUNC12(old_dentry)->i_ino);
	if (!bh)
		return -EIO;

	/* Remove header from its parent directory. */
	FUNC7(old_dir);
	retval = FUNC9(old_dir, bh);
	FUNC11(old_dir);
	if (retval)
		goto done;

	/* And insert it into the new directory with the new name. */
	FUNC4(FUNC0(sb, bh)->name, new_dentry);
	FUNC5(sb, bh);
	FUNC7(new_dir);
	retval = FUNC6(new_dir, bh);
	FUNC11(new_dir);
	/* TODO: move it back to old_dir, if error? */

done:
	FUNC14(bh, retval ? old_dir : new_dir);
	FUNC2(bh);
	return retval;
}