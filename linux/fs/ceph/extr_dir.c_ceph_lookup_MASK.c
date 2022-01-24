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
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct inode {TYPE_2__ d_name; int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_2__ d_name; int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {int /*<<< orphan*/  mask; } ;
struct TYPE_8__ {TYPE_3__ getattr; } ;
struct ceph_mds_request {int r_num_caps; int /*<<< orphan*/  r_req_flags; struct inode* r_parent; TYPE_4__ r_args; int /*<<< orphan*/  r_dentry; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/  i_shared_gen; int /*<<< orphan*/  i_ceph_flags; } ;
struct ceph_fs_client {TYPE_1__* mount_options; struct ceph_mds_client* mdsc; } ;
struct ceph_dentry_info {int /*<<< orphan*/  lease_shared_gen; } ;
struct TYPE_5__ {int /*<<< orphan*/  snapdir_name; } ;

/* Variables and functions */
 int CEPH_CAP_AUTH_SHARED ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_SHARED ; 
 int CEPH_CAP_XATTR_SHARED ; 
 int CEPH_MDS_OP_LOOKUP ; 
 int CEPH_MDS_OP_LOOKUPSNAP ; 
 int /*<<< orphan*/  CEPH_MDS_R_PARENT_LOCKED ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int CEPH_STAT_CAP_INODE ; 
 int /*<<< orphan*/  DCACHE ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct inode* FUNC0 (struct ceph_mds_request*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int /*<<< orphan*/  USE_ANY_MDS ; 
 scalar_t__ FUNC3 (struct ceph_inode_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ceph_dentry_info* FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct ceph_mds_request*,struct inode*,int) ; 
 int FUNC8 (struct ceph_mds_request*,struct inode*,int) ; 
 struct ceph_inode_info* FUNC9 (struct inode*) ; 
 struct ceph_mds_request* FUNC10 (struct ceph_mds_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_mds_request*) ; 
 struct ceph_fs_client* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct ceph_fs_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (char*,struct inode*,...) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC27(struct inode *dir, struct dentry *dentry,
				  unsigned int flags)
{
	struct ceph_fs_client *fsc = FUNC13(dir->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req;
	int op;
	int mask;
	int err;

	FUNC21("lookup %p dentry %p '%pd'\n",
	     dir, dentry, dentry);

	if (dentry->d_name.len > NAME_MAX)
		return FUNC1(-ENAMETOOLONG);

	/* can we conclude ENOENT locally? */
	if (FUNC19(dentry)) {
		struct ceph_inode_info *ci = FUNC9(dir);
		struct ceph_dentry_info *di = FUNC6(dentry);

		FUNC24(&ci->i_ceph_lock);
		FUNC21(" dir %p flags are %d\n", dir, ci->i_ceph_flags);
		if (FUNC26(dentry->d_name.name,
			    fsc->mount_options->snapdir_name,
			    dentry->d_name.len) &&
		    !FUNC22(dir, dentry) &&
		    FUNC16(fsc, DCACHE) &&
		    FUNC4(ci) &&
		    (FUNC3(ci, CEPH_CAP_FILE_SHARED, 1))) {
			FUNC25(&ci->i_ceph_lock);
			FUNC21(" dir %p complete, -ENOENT\n", dir);
			FUNC18(dentry, NULL);
			di->lease_shared_gen = FUNC5(&ci->i_shared_gen);
			return NULL;
		}
		FUNC25(&ci->i_ceph_lock);
	}

	op = FUNC15(dir) == CEPH_SNAPDIR ?
		CEPH_MDS_OP_LOOKUPSNAP : CEPH_MDS_OP_LOOKUP;
	req = FUNC10(mdsc, op, USE_ANY_MDS);
	if (FUNC2(req))
		return FUNC0(req);
	req->r_dentry = FUNC20(dentry);
	req->r_num_caps = 2;

	mask = CEPH_STAT_CAP_INODE | CEPH_CAP_AUTH_SHARED;
	if (FUNC14(dir))
		mask |= CEPH_CAP_XATTR_SHARED;
	req->r_args.getattr.mask = FUNC17(mask);

	req->r_parent = dir;
	FUNC23(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
	err = FUNC11(mdsc, NULL, req);
	err = FUNC8(req, dentry, err);
	dentry = FUNC7(req, dentry, err);
	FUNC12(req);  /* will dput(dentry) */
	FUNC21("lookup result=%p\n", dentry);
	return dentry;
}