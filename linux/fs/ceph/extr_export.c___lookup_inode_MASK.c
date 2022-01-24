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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int /*<<< orphan*/  s_root; } ;
struct inode {int dummy; } ;
struct ceph_vino {int /*<<< orphan*/  snap; int /*<<< orphan*/  ino; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask; } ;
struct TYPE_5__ {TYPE_1__ lookupino; } ;
struct ceph_mds_request {int r_num_caps; struct inode* r_target_inode; struct ceph_vino r_ino1; TYPE_2__ r_args; } ;
struct ceph_mds_client {int dummy; } ;
struct TYPE_6__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int CEPH_CAP_XATTR_SHARED ; 
 int /*<<< orphan*/  CEPH_MDS_OP_LOOKUPINO ; 
 int /*<<< orphan*/  CEPH_NOSNAP ; 
 int CEPH_STAT_CAP_INODE ; 
 struct inode* FUNC0 (struct ceph_mds_request*) ; 
 struct inode* FUNC1 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC2 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_ANY_MDS ; 
 struct inode* FUNC3 (struct super_block*,struct ceph_vino) ; 
 struct ceph_mds_request* FUNC4 (struct ceph_mds_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_request*) ; 
 TYPE_3__* FUNC7 (struct super_block*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC12(struct super_block *sb, u64 ino)
{
	struct ceph_mds_client *mdsc = FUNC7(sb)->mdsc;
	struct inode *inode;
	struct ceph_vino vino;
	int err;

	vino.ino = ino;
	vino.snap = CEPH_NOSNAP;
	inode = FUNC3(sb, vino);
	if (!inode) {
		struct ceph_mds_request *req;
		int mask;

		req = FUNC4(mdsc, CEPH_MDS_OP_LOOKUPINO,
					       USE_ANY_MDS);
		if (FUNC2(req))
			return FUNC0(req);

		mask = CEPH_STAT_CAP_INODE;
		if (FUNC8(FUNC10(sb->s_root)))
			mask |= CEPH_CAP_XATTR_SHARED;
		req->r_args.lookupino.mask = FUNC9(mask);

		req->r_ino1 = vino;
		req->r_num_caps = 1;
		err = FUNC5(mdsc, NULL, req);
		inode = req->r_target_inode;
		if (inode)
			FUNC11(inode);
		FUNC6(req);
		if (!inode)
			return err < 0 ? FUNC1(err) : FUNC1(-ESTALE);
	}
	return inode;
}