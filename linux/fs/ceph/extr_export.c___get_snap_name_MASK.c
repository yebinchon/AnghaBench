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
struct dentry {int dummy; } ;
struct ceph_mds_reply_info_parsed {int dir_nr; struct ceph_mds_reply_dir_entry* dir_entries; scalar_t__ dir_end; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_2__ readdir; } ;
struct ceph_mds_request {unsigned int r_readdir_offset; char* r_path2; struct ceph_mds_reply_info_parsed r_reply_info; int /*<<< orphan*/  r_dentry; struct inode* r_inode; TYPE_3__ r_args; int /*<<< orphan*/  r_direct_mode; } ;
struct TYPE_10__ {TYPE_4__* in; } ;
struct ceph_mds_reply_dir_entry {size_t name_len; int /*<<< orphan*/  name; TYPE_5__ inode; } ;
struct ceph_fs_client {int /*<<< orphan*/  mdsc; TYPE_1__* mount_options; } ;
struct TYPE_9__ {int /*<<< orphan*/  snapid; } ;
struct TYPE_6__ {int /*<<< orphan*/  snapdir_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_MDS_OP_LSSNAP ; 
 scalar_t__ CEPH_NOSNAP ; 
 int /*<<< orphan*/  CEPH_READDIR_REPLY_BITFLAGS ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct ceph_mds_request*) ; 
 int FUNC2 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_AUTH_MDS ; 
 int FUNC3 (struct ceph_mds_request*,struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 struct ceph_fs_client* FUNC5 (struct inode*) ; 
 struct ceph_mds_request* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mds_request*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct dentry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 char* FUNC19 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct dentry *parent, char *name,
			   struct dentry *child)
{
	struct inode *inode = FUNC12(child);
	struct inode *dir = FUNC12(parent);
	struct ceph_fs_client *fsc = FUNC5(inode);
	struct ceph_mds_request *req = NULL;
	char *last_name = NULL;
	unsigned next_offset = 2;
	int err = -EINVAL;

	if (FUNC4(inode) != FUNC4(dir))
		goto out;
	if (FUNC9(inode) == CEPH_SNAPDIR) {
		if (FUNC9(dir) == CEPH_NOSNAP) {
			FUNC22(name, fsc->mount_options->snapdir_name);
			err = 0;
		}
		goto out;
	}
	if (FUNC9(dir) != CEPH_SNAPDIR)
		goto out;

	while (1) {
		struct ceph_mds_reply_info_parsed *rinfo;
		struct ceph_mds_reply_dir_entry *rde;
		int i;

		req = FUNC6(fsc->mdsc, CEPH_MDS_OP_LSSNAP,
					       USE_AUTH_MDS);
		if (FUNC1(req)) {
			err = FUNC2(req);
			req = NULL;
			goto out;
		}
		err = FUNC3(req, inode);
		if (err)
			goto out;

		req->r_direct_mode = USE_AUTH_MDS;
		req->r_readdir_offset = next_offset;
		req->r_args.readdir.flags =
				FUNC11(CEPH_READDIR_REPLY_BITFLAGS);
		if (last_name) {
			req->r_path2 = last_name;
			last_name = NULL;
		}

		req->r_inode = dir;
		FUNC15(dir);
		req->r_dentry = FUNC13(parent);

		FUNC16(dir);
		err = FUNC7(fsc->mdsc, NULL, req);
		FUNC17(dir);

		if (err < 0)
			goto out;

		rinfo = &req->r_reply_info;
		for (i = 0; i < rinfo->dir_nr; i++) {
			rde = rinfo->dir_entries + i;
			FUNC0(!rde->inode.in);
			if (FUNC9(inode) ==
			    FUNC20(rde->inode.in->snapid)) {
				FUNC21(name, rde->name, rde->name_len);
				name[rde->name_len] = '\0';
				err = 0;
				goto out;
			}
		}

		if (rinfo->dir_end)
			break;

		FUNC0(rinfo->dir_nr <= 0);
		rde = rinfo->dir_entries + (rinfo->dir_nr - 1);
		next_offset += rinfo->dir_nr;
		last_name = FUNC19(rde->name, rde->name_len, GFP_KERNEL);
		if (!last_name) {
			err = -ENOMEM;
			goto out;
		}

		FUNC8(req);
		req = NULL;
	}
	err = -ENOENT;
out:
	if (req)
		FUNC8(req);
	FUNC18(last_name);
	FUNC14("get_snap_name %p ino %llx.%llx err=%d\n",
	     child, FUNC10(inode), err);
	return err;
}