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
typedef  int /*<<< orphan*/  umode_t ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct v9fs_inode {int /*<<< orphan*/  v_mutex; void* writeback_fid; } ;
struct posix_acl {int dummy; } ;
struct p9_qid {int dummy; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct p9_fid {int /*<<< orphan*/  i_sb; TYPE_1__ d_name; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__ d_name; } ;
struct file {int /*<<< orphan*/  f_mode; struct p9_fid* private_data; } ;
struct dentry {int /*<<< orphan*/  i_sb; TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 int /*<<< orphan*/  FMODE_CREATED ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 unsigned int O_ACCMODE ; 
 unsigned int O_CREAT ; 
 unsigned int O_RDONLY ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 struct v9fs_inode* FUNC2 (struct p9_fid*) ; 
 struct p9_fid* FUNC3 (struct p9_fid*) ; 
 scalar_t__ FUNC4 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*,struct p9_fid*) ; 
 scalar_t__ FUNC6 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_fid*) ; 
 int FUNC8 (struct file*,struct p9_fid*) ; 
 int FUNC9 (struct file*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generic_file_open ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct p9_fid*) ; 
 int FUNC13 (struct p9_fid*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct p9_qid*) ; 
 struct p9_fid* FUNC14 (struct p9_fid*,int,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC16 (struct p9_fid*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC17 (struct p9_fid*,struct file*) ; 
 int /*<<< orphan*/  FUNC18 (struct p9_fid*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC19 (struct p9_fid*) ; 
 struct p9_fid* FUNC20 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC21 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC22 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int) ; 
 struct p9_fid* FUNC24 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC25 (struct posix_acl*,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC26 (struct p9_fid*,struct p9_fid*,struct posix_acl*,struct posix_acl*) ; 
 struct p9_fid* FUNC27 (struct p9_fid*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC28 (struct p9_fid*) ; 

__attribute__((used)) static int
FUNC29(struct inode *dir, struct dentry *dentry,
			  struct file *file, unsigned flags, umode_t omode)
{
	int err = 0;
	kgid_t gid;
	umode_t mode;
	const unsigned char *name = NULL;
	struct p9_qid qid;
	struct inode *inode;
	struct p9_fid *fid = NULL;
	struct v9fs_inode *v9inode;
	struct p9_fid *dfid, *ofid, *inode_fid;
	struct v9fs_session_info *v9ses;
	struct posix_acl *pacl = NULL, *dacl = NULL;
	struct dentry *res = NULL;

	if (FUNC4(dentry)) {
		res = FUNC27(dir, dentry, 0);
		if (FUNC0(res))
			return FUNC1(res);

		if (res)
			dentry = res;
	}

	/* Only creates */
	if (!(flags & O_CREAT) || FUNC6(dentry))
		return	FUNC8(file, res);

	v9ses = FUNC21(dir);

	name = dentry->d_name.name;
	FUNC15(P9_DEBUG_VFS, "name:%s flags:0x%x mode:0x%hx\n",
		 name, flags, omode);

	dfid = FUNC24(dentry);
	if (FUNC0(dfid)) {
		err = FUNC1(dfid);
		FUNC15(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
		goto out;
	}

	/* clone a fid to use for creation */
	ofid = FUNC3(dfid);
	if (FUNC0(ofid)) {
		err = FUNC1(ofid);
		FUNC15(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
		goto out;
	}

	gid = FUNC19(dir);

	mode = omode;
	/* Update mode based on ACL value */
	err = FUNC16(dir, &mode, &dacl, &pacl);
	if (err) {
		FUNC15(P9_DEBUG_VFS, "Failed to get acl values in creat %d\n",
			 err);
		goto error;
	}
	err = FUNC13(ofid, name, FUNC23(flags),
				    mode, gid, &qid);
	if (err < 0) {
		FUNC15(P9_DEBUG_VFS, "p9_client_open_dotl failed in creat %d\n",
			 err);
		goto error;
	}
	FUNC22(dir);

	/* instantiate inode and assign the unopened fid to the dentry */
	fid = FUNC14(dfid, 1, &name, 1);
	if (FUNC0(fid)) {
		err = FUNC1(fid);
		FUNC15(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
		fid = NULL;
		goto error;
	}
	inode = FUNC20(v9ses, fid, dir->i_sb);
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		FUNC15(P9_DEBUG_VFS, "inode creation failed %d\n", err);
		goto error;
	}
	/* Now set the ACL based on the default value */
	FUNC26(inode, fid, dacl, pacl);

	FUNC18(dentry, fid);
	FUNC5(dentry, inode);

	v9inode = FUNC2(inode);
	FUNC10(&v9inode->v_mutex);
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
		inode_fid = FUNC28(dentry);
		if (FUNC0(inode_fid)) {
			err = FUNC1(inode_fid);
			FUNC11(&v9inode->v_mutex);
			goto err_clunk_old_fid;
		}
		v9inode->writeback_fid = (void *) inode_fid;
	}
	FUNC11(&v9inode->v_mutex);
	/* Since we are opening a file, assign the open fid to the file */
	err = FUNC9(file, dentry, generic_file_open);
	if (err)
		goto err_clunk_old_fid;
	file->private_data = ofid;
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
		FUNC17(inode, file);
	file->f_mode |= FMODE_CREATED;
out:
	FUNC25(dacl, pacl);
	FUNC7(res);
	return err;

error:
	if (fid)
		FUNC12(fid);
err_clunk_old_fid:
	if (ofid)
		FUNC12(ofid);
	goto out;
}