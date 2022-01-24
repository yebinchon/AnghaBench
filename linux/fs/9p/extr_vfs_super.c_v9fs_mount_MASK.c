#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct v9fs_session_info {scalar_t__ cache; struct dentry* s_root; int /*<<< orphan*/  qid; int /*<<< orphan*/ * s_d_op; } ;
struct super_block {scalar_t__ cache; struct dentry* s_root; int /*<<< orphan*/  qid; int /*<<< orphan*/ * s_d_op; } ;
struct p9_wstat {scalar_t__ cache; struct dentry* s_root; int /*<<< orphan*/  qid; int /*<<< orphan*/ * s_d_op; } ;
struct p9_stat_dotl {scalar_t__ cache; struct dentry* s_root; int /*<<< orphan*/  qid; int /*<<< orphan*/ * s_d_op; } ;
struct p9_fid {scalar_t__ cache; struct dentry* s_root; int /*<<< orphan*/  qid; int /*<<< orphan*/ * s_d_op; } ;
struct inode {scalar_t__ cache; struct dentry* s_root; int /*<<< orphan*/  qid; int /*<<< orphan*/ * s_d_op; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {void* i_ino; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  P9_STATS_BASIC ; 
 int FUNC2 (struct v9fs_session_info*) ; 
 int S_IFDIR ; 
 int S_IRWXUGO ; 
 int S_ISVTX ; 
 TYPE_1__* FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct v9fs_session_info*) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC10 (struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC11 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC14 (struct file_system_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct v9fs_session_info*) ; 
 int /*<<< orphan*/  v9fs_cached_dentry_operations ; 
 int /*<<< orphan*/  v9fs_dentry_operations ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,struct v9fs_session_info*) ; 
 int FUNC16 (struct v9fs_session_info*,struct v9fs_session_info*,int) ; 
 int FUNC17 (struct v9fs_session_info*,struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC18 (struct v9fs_session_info*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct v9fs_session_info*) ; 
 void* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC22 (struct v9fs_session_info*,char const*,void*) ; 
 int /*<<< orphan*/  v9fs_set_super ; 
 int /*<<< orphan*/  FUNC23 (struct v9fs_session_info*,TYPE_1__*,struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct v9fs_session_info*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC25(struct file_system_type *fs_type, int flags,
		       const char *dev_name, void *data)
{
	struct super_block *sb = NULL;
	struct inode *inode = NULL;
	struct dentry *root = NULL;
	struct v9fs_session_info *v9ses = NULL;
	umode_t mode = S_IRWXUGO | S_ISVTX;
	struct p9_fid *fid;
	int retval = 0;

	FUNC12(P9_DEBUG_VFS, "\n");

	v9ses = FUNC8(sizeof(struct v9fs_session_info), GFP_KERNEL);
	if (!v9ses)
		return FUNC0(-ENOMEM);

	fid = FUNC22(v9ses, dev_name, data);
	if (FUNC1(fid)) {
		retval = FUNC2(fid);
		goto free_session;
	}

	sb = FUNC14(fs_type, NULL, v9fs_set_super, flags, v9ses);
	if (FUNC1(sb)) {
		retval = FUNC2(sb);
		goto clunk_fid;
	}
	retval = FUNC16(sb, v9ses, flags);
	if (retval)
		goto release_sb;

	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
		sb->s_d_op = &v9fs_cached_dentry_operations;
	else
		sb->s_d_op = &v9fs_dentry_operations;

	inode = FUNC18(sb, S_IFDIR | mode, 0);
	if (FUNC1(inode)) {
		retval = FUNC2(inode);
		goto release_sb;
	}

	root = FUNC4(inode);
	if (!root) {
		retval = -ENOMEM;
		goto release_sb;
	}
	sb->s_root = root;
	if (FUNC19(v9ses)) {
		struct p9_stat_dotl *st = NULL;
		st = FUNC10(fid, P9_STATS_BASIC);
		if (FUNC1(st)) {
			retval = FUNC2(st);
			goto release_sb;
		}
		FUNC3(root)->i_ino = FUNC20(&st->qid);
		FUNC24(st, FUNC3(root), 0);
		FUNC7(st);
	} else {
		struct p9_wstat *st = NULL;
		st = FUNC11(fid);
		if (FUNC1(st)) {
			retval = FUNC2(st);
			goto release_sb;
		}

		FUNC3(root)->i_ino = FUNC20(&st->qid);
		FUNC23(st, FUNC3(root), sb, 0);

		FUNC13(st);
		FUNC7(st);
	}
	retval = FUNC17(inode, fid);
	if (retval)
		goto release_sb;
	FUNC15(root, fid);

	FUNC12(P9_DEBUG_VFS, " simple set mount, return 0\n");
	return FUNC6(sb->s_root);

clunk_fid:
	FUNC9(fid);
	FUNC21(v9ses);
free_session:
	FUNC7(v9ses);
	return FUNC0(retval);

release_sb:
	/*
	 * we will do the session_close and root dentry release
	 * in the below call. But we need to clunk fid, because we haven't
	 * attached the fid to dentry so it won't get clunked
	 * automatically.
	 */
	FUNC9(fid);
	FUNC5(sb);
	return FUNC0(retval);
}