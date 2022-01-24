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
struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct p9_stat_dotl {int /*<<< orphan*/  st_rdev; int /*<<< orphan*/  st_mode; } ;
struct p9_qid {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int i_state; unsigned long i_ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 struct inode* FUNC1 (struct super_block*,unsigned long,int (*) (struct inode*,void*),int /*<<< orphan*/ ,struct p9_stat_dotl*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct p9_fid*) ; 
 int FUNC7 (struct v9fs_session_info*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct p9_qid*) ; 
 int /*<<< orphan*/  v9fs_set_inode_dotl ; 
 int /*<<< orphan*/  FUNC9 (struct p9_stat_dotl*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,void*) ; 
 int FUNC11 (struct inode*,void*) ; 

__attribute__((used)) static struct inode *FUNC12(struct super_block *sb,
					struct p9_qid *qid,
					struct p9_fid *fid,
					struct p9_stat_dotl *st,
					int new)
{
	int retval;
	unsigned long i_ino;
	struct inode *inode;
	struct v9fs_session_info *v9ses = sb->s_fs_info;
	int (*test)(struct inode *, void *);

	if (new)
		test = v9fs_test_new_inode_dotl;
	else
		test = v9fs_test_inode_dotl;

	i_ino = FUNC8(qid);
	inode = FUNC1(sb, i_ino, test, v9fs_set_inode_dotl, st);
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
	retval = FUNC7(v9ses, inode,
				 st->st_mode, FUNC3(st->st_rdev));
	if (retval)
		goto error;

	FUNC9(st, inode, 0);
	FUNC5(inode);
	retval = FUNC6(inode, fid);
	if (retval)
		goto error;

	FUNC4(inode);
	return inode;
error:
	FUNC2(inode);
	return FUNC0(retval);

}