#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {TYPE_3__* head; } ;
struct TYPE_5__ {void* rdev; void* mode; } ;
struct TYPE_6__ {TYPE_1__ mknod; } ;
struct ceph_mds_request {int r_num_caps; int r_dentry_drop; TYPE_4__ r_reply_info; int /*<<< orphan*/ * r_pagelist; int /*<<< orphan*/  r_dentry_unless; TYPE_2__ r_args; int /*<<< orphan*/  r_req_flags; struct inode* r_parent; int /*<<< orphan*/  r_dentry; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct ceph_acl_sec_ctx {int /*<<< orphan*/ * pagelist; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_7__ {int /*<<< orphan*/  is_dentry; } ;

/* Variables and functions */
 int CEPH_CAP_AUTH_EXCL ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_EXCL ; 
 int CEPH_CAP_FILE_SHARED ; 
 int /*<<< orphan*/  CEPH_MDS_OP_MKNOD ; 
 int /*<<< orphan*/  CEPH_MDS_R_PARENT_LOCKED ; 
 scalar_t__ CEPH_NOSNAP ; 
 int EDQUOT ; 
 int EROFS ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_AUTH_MDS ; 
 int FUNC2 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ceph_acl_sec_ctx*) ; 
 struct ceph_mds_request* FUNC4 (struct ceph_mds_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_request*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ *,struct ceph_acl_sec_ctx*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_acl_sec_ctx*) ; 
 struct ceph_fs_client* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dentry*,int /*<<< orphan*/ ,struct ceph_acl_sec_ctx*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct inode *dir, struct dentry *dentry,
		      umode_t mode, dev_t rdev)
{
	struct ceph_fs_client *fsc = FUNC10(dir->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req;
	struct ceph_acl_sec_ctx as_ctx = {};
	int err;

	if (FUNC12(dir) != CEPH_NOSNAP)
		return -EROFS;

	if (FUNC8(dir)) {
		err = -EDQUOT;
		goto out;
	}

	err = FUNC7(dir, &mode, &as_ctx);
	if (err < 0)
		goto out;
	err = FUNC11(dentry, mode, &as_ctx);
	if (err < 0)
		goto out;

	FUNC17("mknod in dir %p dentry %p mode 0%ho rdev %d\n",
	     dir, dentry, mode, rdev);
	req = FUNC4(mdsc, CEPH_MDS_OP_MKNOD, USE_AUTH_MDS);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}
	req->r_dentry = FUNC16(dentry);
	req->r_num_caps = 2;
	req->r_parent = dir;
	FUNC18(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
	req->r_args.mknod.mode = FUNC13(mode);
	req->r_args.mknod.rdev = FUNC13(rdev);
	req->r_dentry_drop = CEPH_CAP_FILE_SHARED | CEPH_CAP_AUTH_EXCL;
	req->r_dentry_unless = CEPH_CAP_FILE_EXCL;
	if (as_ctx.pagelist) {
		req->r_pagelist = as_ctx.pagelist;
		as_ctx.pagelist = NULL;
	}
	err = FUNC5(mdsc, dir, req);
	if (!err && !req->r_reply_info.head->is_dentry)
		err = FUNC2(dir, dentry);
	FUNC6(req);
out:
	if (!err)
		FUNC3(FUNC15(dentry), &as_ctx);
	else
		FUNC14(dentry);
	FUNC9(&as_ctx);
	return err;
}