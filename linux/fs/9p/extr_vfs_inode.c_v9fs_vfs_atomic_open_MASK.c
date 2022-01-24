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
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct v9fs_inode {int /*<<< orphan*/  v_mutex; void* writeback_fid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  f_mode; struct p9_fid* private_data; } ;
typedef  struct p9_fid dentry ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 int /*<<< orphan*/  FMODE_CREATED ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 unsigned int O_ACCMODE ; 
 unsigned int O_CREAT ; 
 unsigned int O_RDONLY ; 
 int FUNC1 (struct p9_fid*) ; 
 struct v9fs_inode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*) ; 
 scalar_t__ FUNC5 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_fid*) ; 
 int FUNC7 (struct file*,struct p9_fid*) ; 
 int FUNC8 (struct file*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generic_file_open ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC12 (struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct file*) ; 
 struct p9_fid* FUNC14 (struct v9fs_session_info*,struct inode*,struct p9_fid*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC19 (struct inode*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC20 (struct p9_fid*) ; 

__attribute__((used)) static int
FUNC21(struct inode *dir, struct dentry *dentry,
		     struct file *file, unsigned flags, umode_t mode)
{
	int err;
	u32 perm;
	struct v9fs_inode *v9inode;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid, *inode_fid;
	struct dentry *res = NULL;

	if (FUNC3(dentry)) {
		res = FUNC19(dir, dentry, 0);
		if (FUNC0(res))
			return FUNC1(res);

		if (res)
			dentry = res;
	}

	/* Only creates */
	if (!(flags & O_CREAT) || FUNC5(dentry))
		return FUNC7(file, res);

	err = 0;

	v9ses = FUNC15(dir);
	perm = FUNC12(v9ses, mode);
	fid = FUNC14(v9ses, dir, dentry, NULL, perm,
				FUNC18(flags,
						FUNC17(v9ses)));
	if (FUNC0(fid)) {
		err = FUNC1(fid);
		fid = NULL;
		goto error;
	}

	FUNC16(dir);
	v9inode = FUNC2(FUNC4(dentry));
	FUNC9(&v9inode->v_mutex);
	if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
	    !v9inode->writeback_fid &&
	    ((flags & O_ACCMODE) != O_RDONLY)) {
		/*
		 * clone a fid and add it to writeback_fid
		 * we do it during open time instead of
		 * page dirty time via write_begin/page_mkwrite
		 * because we want write after unlink usecase
		 * to work.
		 */
		inode_fid = FUNC20(dentry);
		if (FUNC0(inode_fid)) {
			err = FUNC1(inode_fid);
			FUNC10(&v9inode->v_mutex);
			goto error;
		}
		v9inode->writeback_fid = (void *) inode_fid;
	}
	FUNC10(&v9inode->v_mutex);
	err = FUNC8(file, dentry, generic_file_open);
	if (err)
		goto error;

	file->private_data = fid;
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
		FUNC13(FUNC4(dentry), file);

	file->f_mode |= FMODE_CREATED;
out:
	FUNC6(res);
	return err;

error:
	if (fid)
		FUNC11(fid);
	goto out;
}