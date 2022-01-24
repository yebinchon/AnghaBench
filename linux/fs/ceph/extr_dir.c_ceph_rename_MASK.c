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
struct ceph_mds_request {int r_num_caps; int r_old_inode_drop; TYPE_2__ r_reply_info; int /*<<< orphan*/  r_inode_drop; void* r_dentry_unless; void* r_dentry_drop; void* r_old_dentry_unless; void* r_old_dentry_drop; int /*<<< orphan*/  r_req_flags; struct inode* r_parent; struct inode* r_old_dentry_dir; void* r_old_dentry; void* r_dentry; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_dentry; } ;

/* Variables and functions */
 void* CEPH_CAP_FILE_EXCL ; 
 void* CEPH_CAP_FILE_SHARED ; 
 int CEPH_CAP_LINK_EXCL ; 
 int CEPH_CAP_LINK_SHARED ; 
 int CEPH_MDS_OP_RENAME ; 
 int CEPH_MDS_OP_RENAMESNAP ; 
 int /*<<< orphan*/  CEPH_MDS_R_PARENT_LOCKED ; 
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int EINVAL ; 
 int EROFS ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_AUTH_MDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ceph_mds_request* FUNC3 (struct ceph_mds_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct inode*) ; 
 struct ceph_fs_client* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct dentry*) ; 
 scalar_t__ FUNC11 (struct dentry*) ; 
 void* FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct inode*,struct dentry*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct inode *old_dir, struct dentry *old_dentry,
		       struct inode *new_dir, struct dentry *new_dentry,
		       unsigned int flags)
{
	struct ceph_fs_client *fsc = FUNC7(old_dir->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req;
	int op = CEPH_MDS_OP_RENAME;
	int err;

	if (flags)
		return -EINVAL;

	if (FUNC8(old_dir) != FUNC8(new_dir))
		return -EXDEV;
	if (FUNC8(old_dir) != CEPH_NOSNAP) {
		if (old_dir == new_dir && FUNC8(old_dir) == CEPH_SNAPDIR)
			op = CEPH_MDS_OP_RENAMESNAP;
		else
			return -EROFS;
	}
	/* don't allow cross-quota renames */
	if ((old_dir != new_dir) &&
	    (!FUNC6(old_dir, new_dir)))
		return -EXDEV;

	FUNC13("rename dir %p dentry %p to dir %p dentry %p\n",
	     old_dir, old_dentry, new_dir, new_dentry);
	req = FUNC3(mdsc, op, USE_AUTH_MDS);
	if (FUNC0(req))
		return FUNC1(req);
	FUNC14(old_dir);
	req->r_dentry = FUNC12(new_dentry);
	req->r_num_caps = 2;
	req->r_old_dentry = FUNC12(old_dentry);
	req->r_old_dentry_dir = old_dir;
	req->r_parent = new_dir;
	FUNC15(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
	req->r_old_dentry_drop = CEPH_CAP_FILE_SHARED;
	req->r_old_dentry_unless = CEPH_CAP_FILE_EXCL;
	req->r_dentry_drop = CEPH_CAP_FILE_SHARED;
	req->r_dentry_unless = CEPH_CAP_FILE_EXCL;
	/* release LINK_RDCACHE on source inode (mds will lock it) */
	req->r_old_inode_drop = CEPH_CAP_LINK_SHARED | CEPH_CAP_LINK_EXCL;
	if (FUNC11(new_dentry)) {
		req->r_inode_drop =
			FUNC2(FUNC9(new_dentry));
	}
	err = FUNC4(mdsc, old_dir, req);
	if (!err && !req->r_reply_info.head->is_dentry) {
		/*
		 * Normally d_move() is done by fill_trace (called by
		 * do_request, above).  If there is no trace, we need
		 * to do it here.
		 */
		FUNC10(old_dentry, new_dentry);
	}
	FUNC5(req);
	return err;
}