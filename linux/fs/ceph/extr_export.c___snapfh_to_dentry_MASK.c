#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_root; } ;
struct inode {scalar_t__ i_nlink; } ;
struct dentry {int dummy; } ;
struct ceph_vino {scalar_t__ ino; scalar_t__ snap; } ;
struct ceph_nfs_snapfh {scalar_t__ parent_ino; scalar_t__ snapid; scalar_t__ ino; int hash; } ;
struct TYPE_4__ {void* hash; void* parent; void* snapid; void* mask; } ;
struct TYPE_5__ {TYPE_1__ lookupino; } ;
struct ceph_mds_request {int r_num_caps; struct inode* r_target_inode; struct ceph_vino r_ino1; TYPE_2__ r_args; } ;
struct ceph_mds_client {int dummy; } ;
struct TYPE_6__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int CEPH_CAP_XATTR_SHARED ; 
 int /*<<< orphan*/  CEPH_MDS_OP_LOOKUPINO ; 
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int CEPH_STAT_CAP_INODE ; 
 int EOPNOTSUPP ; 
 struct dentry* FUNC0 (struct ceph_mds_request*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_ANY_MDS ; 
 struct inode* FUNC3 (struct super_block*,struct ceph_vino) ; 
 struct inode* FUNC4 (struct inode*) ; 
 struct ceph_mds_request* FUNC5 (struct ceph_mds_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_mds_request*) ; 
 TYPE_3__* FUNC8 (struct super_block*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 void* FUNC11 (int) ; 
 void* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC14 (struct inode*) ; 
 struct dentry* FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC18(struct super_block *sb,
					  struct ceph_nfs_snapfh *sfh,
					  bool want_parent)
{
	struct ceph_mds_client *mdsc = FUNC8(sb)->mdsc;
	struct ceph_mds_request *req;
	struct inode *inode;
	struct ceph_vino vino;
	int mask;
	int err;
	bool unlinked = false;

	if (want_parent) {
		vino.ino = sfh->parent_ino;
		if (sfh->snapid == CEPH_SNAPDIR)
			vino.snap = CEPH_NOSNAP;
		else if (sfh->ino == sfh->parent_ino)
			vino.snap = CEPH_SNAPDIR;
		else
			vino.snap = sfh->snapid;
	} else {
		vino.ino = sfh->ino;
		vino.snap = sfh->snapid;
	}
	inode = FUNC3(sb, vino);
	if (inode)
		return FUNC14(inode);

	req = FUNC5(mdsc, CEPH_MDS_OP_LOOKUPINO,
				       USE_ANY_MDS);
	if (FUNC2(req))
		return FUNC0(req);

	mask = CEPH_STAT_CAP_INODE;
	if (FUNC9(FUNC13(sb->s_root)))
		mask |= CEPH_CAP_XATTR_SHARED;
	req->r_args.lookupino.mask = FUNC11(mask);
	if (vino.snap < CEPH_NOSNAP) {
		req->r_args.lookupino.snapid = FUNC12(vino.snap);
		if (!want_parent && sfh->ino != sfh->parent_ino) {
			req->r_args.lookupino.parent =
					FUNC12(sfh->parent_ino);
			req->r_args.lookupino.hash =
					FUNC11(sfh->hash);
		}
	}

	req->r_ino1 = vino;
	req->r_num_caps = 1;
	err = FUNC6(mdsc, NULL, req);
	inode = req->r_target_inode;
	if (inode) {
		if (vino.snap == CEPH_SNAPDIR) {
			if (inode->i_nlink == 0)
				unlinked = true;
			inode = FUNC4(inode);
		} else if (FUNC10(inode) == vino.snap) {
			FUNC17(inode);
		} else {
			/* mds does not support lookup snapped inode */
			err = -EOPNOTSUPP;
			inode = NULL;
		}
	}
	FUNC7(req);

	if (want_parent) {
		FUNC16("snapfh_to_parent %llx.%llx\n err=%d\n",
		     vino.ino, vino.snap, err);
	} else {
		FUNC16("snapfh_to_dentry %llx.%llx parent %llx hash %x err=%d",
		      vino.ino, vino.snap, sfh->parent_ino, sfh->hash, err);
	}
	if (!inode)
		return FUNC1(-ESTALE);
	/* see comments in ceph_get_parent() */
	return unlinked ? FUNC15(inode) : FUNC14(inode);
}