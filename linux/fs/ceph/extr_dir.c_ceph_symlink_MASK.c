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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct ceph_mds_request {int r_num_caps; int r_dentry_drop; TYPE_2__ r_reply_info; int /*<<< orphan*/  r_dentry_unless; int /*<<< orphan*/  r_dentry; int /*<<< orphan*/  r_req_flags; struct inode* r_parent; int /*<<< orphan*/  r_path2; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct ceph_acl_sec_ctx {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_dentry; } ;

/* Variables and functions */
 int CEPH_CAP_AUTH_EXCL ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_EXCL ; 
 int CEPH_CAP_FILE_SHARED ; 
 int /*<<< orphan*/  CEPH_MDS_OP_SYMLINK ; 
 int /*<<< orphan*/  CEPH_MDS_R_PARENT_LOCKED ; 
 scalar_t__ CEPH_NOSNAP ; 
 int EDQUOT ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  USE_AUTH_MDS ; 
 int FUNC2 (struct inode*,struct dentry*) ; 
 struct ceph_mds_request* FUNC3 (struct ceph_mds_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_request*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_acl_sec_ctx*) ; 
 struct ceph_fs_client* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct dentry*,int,struct ceph_acl_sec_ctx*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct inode*,struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry,
			    const char *dest)
{
	struct ceph_fs_client *fsc = FUNC8(dir->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req;
	struct ceph_acl_sec_ctx as_ctx = {};
	int err;

	if (FUNC10(dir) != CEPH_NOSNAP)
		return -EROFS;

	if (FUNC6(dir)) {
		err = -EDQUOT;
		goto out;
	}

	err = FUNC9(dentry, S_IFLNK | 0777, &as_ctx);
	if (err < 0)
		goto out;

	FUNC13("symlink in dir %p dentry %p to '%s'\n", dir, dentry, dest);
	req = FUNC3(mdsc, CEPH_MDS_OP_SYMLINK, USE_AUTH_MDS);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}
	req->r_path2 = FUNC14(dest, GFP_KERNEL);
	if (!req->r_path2) {
		err = -ENOMEM;
		FUNC5(req);
		goto out;
	}
	req->r_parent = dir;
	FUNC15(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
	req->r_dentry = FUNC12(dentry);
	req->r_num_caps = 2;
	req->r_dentry_drop = CEPH_CAP_FILE_SHARED | CEPH_CAP_AUTH_EXCL;
	req->r_dentry_unless = CEPH_CAP_FILE_EXCL;
	err = FUNC4(mdsc, dir, req);
	if (!err && !req->r_reply_info.head->is_dentry)
		err = FUNC2(dir, dentry);
	FUNC5(req);
out:
	if (err)
		FUNC11(dentry);
	FUNC7(&as_ctx);
	return err;
}