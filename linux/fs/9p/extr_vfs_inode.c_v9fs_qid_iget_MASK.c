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
typedef  int /*<<< orphan*/  umode_t ;
struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct p9_wstat {int dummy; } ;
struct p9_qid {int dummy; } ;
struct inode {int i_state; unsigned long i_ino; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 struct inode* FUNC1 (struct super_block*,unsigned long,int (*) (struct inode*,void*),int /*<<< orphan*/ ,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct v9fs_session_info*,struct p9_wstat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct v9fs_session_info*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct p9_qid*) ; 
 int /*<<< orphan*/  v9fs_set_inode ; 
 int /*<<< orphan*/  FUNC8 (struct p9_wstat*,struct inode*,struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,void*) ; 
 int FUNC10 (struct inode*,void*) ; 

__attribute__((used)) static struct inode *FUNC11(struct super_block *sb,
				   struct p9_qid *qid,
				   struct p9_wstat *st,
				   int new)
{
	dev_t rdev;
	int retval;
	umode_t umode;
	unsigned long i_ino;
	struct inode *inode;
	struct v9fs_session_info *v9ses = sb->s_fs_info;
	int (*test)(struct inode *, void *);

	if (new)
		test = v9fs_test_new_inode;
	else
		test = v9fs_test_inode;

	i_ino = FUNC7(qid);
	inode = FUNC1(sb, i_ino, test, v9fs_set_inode, st);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;
	/*
	 * initialize the inode with the stat info
	 * FIXME!! we may need support for stale inodes
	 * later.
	 */
	inode->i_ino = i_ino;
	umode = FUNC3(v9ses, st, &rdev);
	retval = FUNC6(v9ses, inode, umode, rdev);
	if (retval)
		goto error;

	FUNC8(st, inode, sb, 0);
	FUNC5(inode);
	FUNC4(inode);
	return inode;
error:
	FUNC2(inode);
	return FUNC0(retval);

}