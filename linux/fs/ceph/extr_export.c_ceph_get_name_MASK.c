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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct ceph_mds_reply_info_parsed {size_t dname_len; int /*<<< orphan*/  dname; } ;
struct ceph_mds_request {int r_num_caps; struct ceph_mds_reply_info_parsed r_reply_info; int /*<<< orphan*/  r_req_flags; void* r_parent; int /*<<< orphan*/  r_ino2; struct inode* r_inode; } ;
struct ceph_mds_client {int dummy; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MDS_OP_LOOKUPNAME ; 
 int /*<<< orphan*/  CEPH_MDS_R_PARENT_LOCKED ; 
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_ANY_MDS ; 
 int FUNC2 (struct dentry*,char*,struct dentry*) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 struct ceph_mds_request* FUNC4 (struct ceph_mds_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_request*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 void* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct dentry*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct dentry *parent, char *name,
			 struct dentry *child)
{
	struct ceph_mds_client *mdsc;
	struct ceph_mds_request *req;
	struct inode *inode = FUNC10(child);
	int err;

	if (FUNC7(inode) != CEPH_NOSNAP)
		return FUNC2(parent, name, child);

	mdsc = FUNC3(inode)->mdsc;
	req = FUNC4(mdsc, CEPH_MDS_OP_LOOKUPNAME,
				       USE_ANY_MDS);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC13(FUNC10(parent));

	req->r_inode = inode;
	FUNC12(inode);
	req->r_ino2 = FUNC8(FUNC10(parent));
	req->r_parent = FUNC10(parent);
	FUNC16(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
	req->r_num_caps = 2;
	err = FUNC5(mdsc, NULL, req);

	FUNC14(FUNC10(parent));

	if (!err) {
		struct ceph_mds_reply_info_parsed *rinfo = &req->r_reply_info;
		FUNC15(name, rinfo->dname, rinfo->dname_len);
		name[rinfo->dname_len] = 0;
		FUNC11("get_name %p ino %llx.%llx name %s\n",
		     child, FUNC9(inode), name);
	} else {
		FUNC11("get_name %p ino %llx.%llx err %d\n",
		     child, FUNC9(inode), err);
	}

	FUNC6(req);
	return err;
}