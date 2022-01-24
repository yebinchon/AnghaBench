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
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {scalar_t__ inline_version; int inline_len; } ;
struct TYPE_8__ {TYPE_3__ targeti; } ;
struct TYPE_5__ {int /*<<< orphan*/  mask; } ;
struct TYPE_6__ {TYPE_1__ getattr; } ;
struct ceph_mds_request {int r_num_caps; TYPE_4__ r_reply_info; struct page* r_locked_page; TYPE_2__ r_args; struct inode* r_inode; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 scalar_t__ CEPH_INLINE_NONE ; 
 int /*<<< orphan*/  CEPH_MDS_OP_GETATTR ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int CEPH_STAT_RSTAT ; 
 int EINVAL ; 
 int ENODATA ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 int USE_ANY_MDS ; 
 int USE_AUTH_MDS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct ceph_mds_request* FUNC5 (struct ceph_mds_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_mds_request*) ; 
 struct ceph_fs_client* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

int FUNC13(struct inode *inode, struct page *locked_page,
		      int mask, bool force)
{
	struct ceph_fs_client *fsc = FUNC8(inode->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req;
	int mode;
	int err;

	if (FUNC9(inode) == CEPH_SNAPDIR) {
		FUNC11("do_getattr inode %p SNAPDIR\n", inode);
		return 0;
	}

	FUNC11("do_getattr inode %p mask %s mode 0%o\n",
	     inode, FUNC2(mask), inode->i_mode);
	if (!force && FUNC3(FUNC4(inode), mask, 1))
		return 0;

	mode = (mask & CEPH_STAT_RSTAT) ? USE_AUTH_MDS : USE_ANY_MDS;
	req = FUNC5(mdsc, CEPH_MDS_OP_GETATTR, mode);
	if (FUNC0(req))
		return FUNC1(req);
	req->r_inode = inode;
	FUNC12(inode);
	req->r_num_caps = 1;
	req->r_args.getattr.mask = FUNC10(mask);
	req->r_locked_page = locked_page;
	err = FUNC6(mdsc, NULL, req);
	if (locked_page && err == 0) {
		u64 inline_version = req->r_reply_info.targeti.inline_version;
		if (inline_version == 0) {
			/* the reply is supposed to contain inline data */
			err = -EINVAL;
		} else if (inline_version == CEPH_INLINE_NONE) {
			err = -ENODATA;
		} else {
			err = req->r_reply_info.targeti.inline_len;
		}
	}
	FUNC7(req);
	FUNC11("do_getattr result=%d\n", err);
	return err;
}