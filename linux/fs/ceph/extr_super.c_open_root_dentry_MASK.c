#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
typedef  char const dentry ;
struct TYPE_9__ {int /*<<< orphan*/  mask; } ;
struct TYPE_10__ {TYPE_4__ getattr; } ;
struct TYPE_6__ {int /*<<< orphan*/  snap; int /*<<< orphan*/  ino; } ;
struct ceph_mds_request {unsigned long r_started; int r_num_caps; struct inode* r_target_inode; TYPE_5__ r_args; int /*<<< orphan*/  r_timeout; TYPE_1__ r_ino1; int /*<<< orphan*/  r_path1; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {TYPE_3__* client; struct ceph_mds_client* mdsc; } ;
struct TYPE_8__ {TYPE_2__* options; } ;
struct TYPE_7__ {int /*<<< orphan*/  mount_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_INO_ROOT ; 
 int /*<<< orphan*/  CEPH_MDS_OP_GETATTR ; 
 int /*<<< orphan*/  CEPH_NOSNAP ; 
 int /*<<< orphan*/  CEPH_STAT_CAP_INODE ; 
 int ENOMEM ; 
 char const* FUNC0 (struct ceph_mds_request*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_ANY_MDS ; 
 struct ceph_mds_request* FUNC3 (struct ceph_mds_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC10(struct ceph_fs_client *fsc,
				       const char *path,
				       unsigned long started)
{
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req = NULL;
	int err;
	struct dentry *root;

	/* open dir */
	FUNC8("open_root_inode opening '%s'\n", path);
	req = FUNC3(mdsc, CEPH_MDS_OP_GETATTR, USE_ANY_MDS);
	if (FUNC2(req))
		return FUNC0(req);
	req->r_path1 = FUNC9(path, GFP_NOFS);
	if (!req->r_path1) {
		root = FUNC1(-ENOMEM);
		goto out;
	}

	req->r_ino1.ino = CEPH_INO_ROOT;
	req->r_ino1.snap = CEPH_NOSNAP;
	req->r_started = started;
	req->r_timeout = fsc->client->options->mount_timeout;
	req->r_args.getattr.mask = FUNC6(CEPH_STAT_CAP_INODE);
	req->r_num_caps = 2;
	err = FUNC4(mdsc, NULL, req);
	if (err == 0) {
		struct inode *inode = req->r_target_inode;
		req->r_target_inode = NULL;
		FUNC8("open_root_inode success\n");
		root = FUNC7(inode);
		if (!root) {
			root = FUNC1(-ENOMEM);
			goto out;
		}
		FUNC8("open_root_inode success, root dentry is %p\n", root);
	} else {
		root = FUNC1(err);
	}
out:
	FUNC5(req);
	return root;
}