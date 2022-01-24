#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int /*<<< orphan*/  f_mode; } ;
struct TYPE_10__ {scalar_t__ has_create_ino; TYPE_4__* head; } ;
struct TYPE_7__ {int /*<<< orphan*/  mask; } ;
struct TYPE_8__ {TYPE_2__ open; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct dentry {int r_num_caps; int r_dentry_drop; scalar_t__ r_op; int /*<<< orphan*/  r_fmode; scalar_t__ r_target_inode; int /*<<< orphan*/  r_err; TYPE_5__ r_reply_info; int /*<<< orphan*/  r_req_flags; struct inode* r_parent; TYPE_3__ r_args; int /*<<< orphan*/ * r_pagelist; int /*<<< orphan*/  r_dentry_unless; int /*<<< orphan*/  r_dentry; TYPE_1__ d_name; } ;
struct ceph_mds_request {int r_num_caps; int r_dentry_drop; scalar_t__ r_op; int /*<<< orphan*/  r_fmode; scalar_t__ r_target_inode; int /*<<< orphan*/  r_err; TYPE_5__ r_reply_info; int /*<<< orphan*/  r_req_flags; struct inode* r_parent; TYPE_3__ r_args; int /*<<< orphan*/ * r_pagelist; int /*<<< orphan*/  r_dentry_unless; int /*<<< orphan*/  r_dentry; TYPE_1__ d_name; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct ceph_acl_sec_ctx {int /*<<< orphan*/ * pagelist; } ;
struct TYPE_9__ {int /*<<< orphan*/  is_dentry; } ;

/* Variables and functions */
 int CEPH_CAP_AUTH_EXCL ; 
 int CEPH_CAP_AUTH_SHARED ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_EXCL ; 
 int CEPH_CAP_FILE_SHARED ; 
 int CEPH_CAP_XATTR_SHARED ; 
 scalar_t__ CEPH_MDS_OP_CREATE ; 
 int /*<<< orphan*/  CEPH_MDS_R_PARENT_LOCKED ; 
 int CEPH_STAT_CAP_INODE ; 
 int EDQUOT ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int /*<<< orphan*/  FMODE_CREATED ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ NAME_MAX ; 
 unsigned int O_CREAT ; 
 unsigned int O_TRUNC ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*,struct dentry*,int) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 
 int FUNC4 (struct dentry*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ceph_acl_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct ceph_mds_client*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  ceph_open ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ *,struct ceph_acl_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_acl_sec_ctx*) ; 
 struct ceph_fs_client* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct dentry*,int /*<<< orphan*/ ,struct ceph_acl_sec_ctx*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC18 (struct dentry*) ; 
 scalar_t__ FUNC19 (struct dentry*) ; 
 scalar_t__ FUNC20 (struct dentry*) ; 
 scalar_t__ FUNC21 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC22 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int FUNC24 (struct file*,struct dentry*) ; 
 int FUNC25 (struct file*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC26 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC28(struct inode *dir, struct dentry *dentry,
		     struct file *file, unsigned flags, umode_t mode)
{
	struct ceph_fs_client *fsc = FUNC13(dir->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req;
	struct dentry *dn;
	struct ceph_acl_sec_ctx as_ctx = {};
	int mask;
	int err;

	FUNC23("atomic_open %p dentry %p '%pd' %s flags %d mode 0%o\n",
	     dir, dentry, dentry,
	     FUNC21(dentry) ? "unhashed" : "hashed", flags, mode);

	if (dentry->d_name.len > NAME_MAX)
		return -ENAMETOOLONG;

	if (flags & O_CREAT) {
		if (FUNC11(dir))
			return -EDQUOT;
		err = FUNC9(dir, &mode, &as_ctx);
		if (err < 0)
			return err;
		err = FUNC14(dentry, mode, &as_ctx);
		if (err < 0)
			goto out_ctx;
	} else if (!FUNC17(dentry)) {
		/* If it's not being looked up, it's negative */
		return -ENOENT;
	}

	/* do the open */
	req = FUNC26(dir->i_sb, flags, mode);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out_ctx;
	}
	req->r_dentry = FUNC22(dentry);
	req->r_num_caps = 2;
	if (flags & O_CREAT) {
		req->r_dentry_drop = CEPH_CAP_FILE_SHARED | CEPH_CAP_AUTH_EXCL;
		req->r_dentry_unless = CEPH_CAP_FILE_EXCL;
		if (as_ctx.pagelist) {
			req->r_pagelist = as_ctx.pagelist;
			as_ctx.pagelist = NULL;
		}
	}

       mask = CEPH_STAT_CAP_INODE | CEPH_CAP_AUTH_SHARED;
       if (FUNC15(dir))
               mask |= CEPH_CAP_XATTR_SHARED;
       req->r_args.open.mask = FUNC16(mask);

	req->r_parent = dir;
	FUNC27(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
	err = FUNC7(mdsc,
				   (flags & (O_CREAT|O_TRUNC)) ? dir : NULL,
				   req);
	err = FUNC4(req, dentry, err);
	if (err)
		goto out_req;

	if ((flags & O_CREAT) && !req->r_reply_info.head->is_dentry)
		err = FUNC3(dir, dentry);

	if (FUNC17(dentry)) {
		dn = FUNC2(req, dentry, err);
		if (FUNC0(dn))
			err = FUNC1(dn);
	} else {
		/* we were given a hashed negative dentry */
		dn = NULL;
	}
	if (err)
		goto out_req;
	if (dn || FUNC20(dentry) || FUNC19(dentry)) {
		/* make vfs retry on splice, ENOENT, or symlink */
		FUNC23("atomic_open finish_no_open on dn %p\n", dn);
		err = FUNC24(file, dn);
	} else {
		FUNC23("atomic_open finish_open on dn %p\n", dn);
		if (req->r_op == CEPH_MDS_OP_CREATE && req->r_reply_info.has_create_ino) {
			FUNC5(FUNC18(dentry), &as_ctx);
			file->f_mode |= FMODE_CREATED;
		}
		err = FUNC25(file, dentry, ceph_open);
	}
out_req:
	if (!req->r_err && req->r_target_inode)
		FUNC10(FUNC6(req->r_target_inode), req->r_fmode);
	FUNC8(req);
out_ctx:
	FUNC12(&as_ctx);
	FUNC23("atomic_open result=%d\n", err);
	return err;
}