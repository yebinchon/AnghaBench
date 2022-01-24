#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ceph_mds_request {int r_num_caps; int r_fmode; struct inode* r_inode; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; scalar_t__ i_auth_cap; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int CEPH_CAP_ANY_WR ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 int CEPH_CAP_FILE_RD ; 
 int CEPH_CAP_FILE_WR ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int O_LAZY ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 int FUNC2 (struct ceph_inode_info*) ; 
 int FUNC3 (struct ceph_inode_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC7 (struct inode*) ; 
 int FUNC8 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_mds_request*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct inode*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 struct ceph_mds_request* FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct inode *inode)
{
	struct ceph_mds_client *mdsc = FUNC10(inode->i_sb)->mdsc;
	struct ceph_inode_info *ci = FUNC7(inode);
	struct ceph_mds_request *req;
	int err, flags, wanted;

	FUNC14(&ci->i_ceph_lock);
	wanted = FUNC2(ci);
	if (FUNC4(ci) &&
	    (!(wanted & CEPH_CAP_ANY_WR) || ci->i_auth_cap)) {
		int issued = FUNC3(ci, NULL);
		FUNC15(&ci->i_ceph_lock);
		FUNC11("renew caps %p want %s issued %s updating mds_wanted\n",
		     inode, FUNC5(wanted), FUNC5(issued));
		FUNC6(ci, 0, NULL);
		return 0;
	}
	FUNC15(&ci->i_ceph_lock);

	flags = 0;
	if ((wanted & CEPH_CAP_FILE_RD) && (wanted & CEPH_CAP_FILE_WR))
		flags = O_RDWR;
	else if (wanted & CEPH_CAP_FILE_RD)
		flags = O_RDONLY;
	else if (wanted & CEPH_CAP_FILE_WR)
		flags = O_WRONLY;
#ifdef O_LAZY
	if (wanted & CEPH_CAP_FILE_LAZYIO)
		flags |= O_LAZY;
#endif

	req = FUNC13(inode->i_sb, flags, 0);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}

	req->r_inode = inode;
	FUNC12(inode);
	req->r_num_caps = 1;
	req->r_fmode = -1;

	err = FUNC8(mdsc, NULL, req);
	FUNC9(req);
out:
	FUNC11("renew caps %p open result=%d\n", inode, err);
	return err < 0 ? err : 0;
}