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
struct dentry {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct ceph_mds_request {int r_num_caps; TYPE_2__ r_reply_info; int /*<<< orphan*/  r_inode_drop; int /*<<< orphan*/  r_dentry_unless; int /*<<< orphan*/  r_dentry_drop; int /*<<< orphan*/  r_req_flags; struct inode* r_parent; int /*<<< orphan*/  r_dentry; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_FILE_EXCL ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_SHARED ; 
 int CEPH_MDS_OP_RMDIR ; 
 int CEPH_MDS_OP_RMSNAP ; 
 int CEPH_MDS_OP_UNLINK ; 
 int /*<<< orphan*/  CEPH_MDS_R_PARENT_LOCKED ; 
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int EROFS ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_AUTH_MDS ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct ceph_mds_request* FUNC3 (struct ceph_mds_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_request*) ; 
 struct ceph_fs_client* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct inode*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry)
{
	struct ceph_fs_client *fsc = FUNC6(dir->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct inode *inode = FUNC9(dentry);
	struct ceph_mds_request *req;
	int err = -EROFS;
	int op;

	if (FUNC7(dir) == CEPH_SNAPDIR) {
		/* rmdir .snap/foo is RMSNAP */
		FUNC12("rmsnap dir %p '%pd' dn %p\n", dir, dentry, dentry);
		op = CEPH_MDS_OP_RMSNAP;
	} else if (FUNC7(dir) == CEPH_NOSNAP) {
		FUNC12("unlink/rmdir dir %p dn %p inode %p\n",
		     dir, dentry, inode);
		op = FUNC10(dentry) ?
			CEPH_MDS_OP_RMDIR : CEPH_MDS_OP_UNLINK;
	} else
		goto out;
	req = FUNC3(mdsc, op, USE_AUTH_MDS);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}
	req->r_dentry = FUNC11(dentry);
	req->r_num_caps = 2;
	req->r_parent = dir;
	FUNC13(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
	req->r_dentry_drop = CEPH_CAP_FILE_SHARED;
	req->r_dentry_unless = CEPH_CAP_FILE_EXCL;
	req->r_inode_drop = FUNC2(inode);
	err = FUNC4(mdsc, dir, req);
	if (!err && !req->r_reply_info.head->is_dentry)
		FUNC8(dentry);
	FUNC5(req);
out:
	return err;
}