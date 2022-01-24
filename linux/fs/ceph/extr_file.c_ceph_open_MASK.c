#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct file {int f_flags; int f_mode; struct ceph_file_info* private_data; } ;
struct ceph_mds_request {int r_num_caps; int r_fmode; struct inode* r_inode; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_inode_info {int i_snap_caps; int /*<<< orphan*/  i_ceph_lock; scalar_t__ i_auth_cap; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct ceph_file_info {int dummy; } ;

/* Variables and functions */
 int CEPH_FILE_MODE_WR ; 
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int EROFS ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct ceph_mds_request*) ; 
 int O_CREAT ; 
 int O_DIRECTORY ; 
 int O_EXCL ; 
 int FUNC1 (struct ceph_mds_request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ceph_inode_info*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ceph_inode_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_inode_info*,int) ; 
 scalar_t__ FUNC6 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct inode*,struct file*,int) ; 
 struct ceph_inode_info* FUNC12 (struct inode*) ; 
 int FUNC13 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC14 (struct ceph_mds_request*) ; 
 struct ceph_fs_client* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 struct ceph_mds_request* FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(struct inode *inode, struct file *file)
{
	struct ceph_inode_info *ci = FUNC12(inode);
	struct ceph_fs_client *fsc = FUNC15(inode->i_sb);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_mds_request *req;
	struct ceph_file_info *fi = file->private_data;
	int err;
	int flags, fmode, wanted;

	if (fi) {
		FUNC18("open file %p is already opened\n", file);
		return 0;
	}

	/* filter out O_CREAT|O_EXCL; vfs did that already.  yuck. */
	flags = file->f_flags & ~(O_CREAT|O_EXCL);
	if (FUNC2(inode->i_mode))
		flags = O_DIRECTORY;  /* mds likes to know */

	FUNC18("open inode %p ino %llx.%llx file %p flags %d (%d)\n", inode,
	     FUNC17(inode), file, flags, file->f_flags);
	fmode = FUNC10(flags);
	wanted = FUNC8(fmode);

	/* snapped files are read-only */
	if (FUNC16(inode) != CEPH_NOSNAP && (file->f_mode & FMODE_WRITE))
		return -EROFS;

	/* trivially open snapdir */
	if (FUNC16(inode) == CEPH_SNAPDIR) {
		FUNC21(&ci->i_ceph_lock);
		FUNC5(ci, fmode);
		FUNC22(&ci->i_ceph_lock);
		return FUNC11(inode, file, fmode);
	}

	/*
	 * No need to block if we have caps on the auth MDS (for
	 * write) or any MDS (for read).  Update wanted set
	 * asynchronously.
	 */
	FUNC21(&ci->i_ceph_lock);
	if (FUNC6(ci) &&
	    (((fmode & CEPH_FILE_MODE_WR) == 0) || ci->i_auth_cap)) {
		int mds_wanted = FUNC4(ci, true);
		int issued = FUNC3(ci, NULL);

		FUNC18("open %p fmode %d want %s issued %s using existing\n",
		     inode, fmode, FUNC7(wanted),
		     FUNC7(issued));
		FUNC5(ci, fmode);
		FUNC22(&ci->i_ceph_lock);

		/* adjust wanted? */
		if ((issued & wanted) != wanted &&
		    (mds_wanted & wanted) != wanted &&
		    FUNC16(inode) != CEPH_SNAPDIR)
			FUNC9(ci, 0, NULL);

		return FUNC11(inode, file, fmode);
	} else if (FUNC16(inode) != CEPH_NOSNAP &&
		   (ci->i_snap_caps & wanted) == wanted) {
		FUNC5(ci, fmode);
		FUNC22(&ci->i_ceph_lock);
		return FUNC11(inode, file, fmode);
	}

	FUNC22(&ci->i_ceph_lock);

	FUNC18("open fmode %d wants %s\n", fmode, FUNC7(wanted));
	req = FUNC20(inode->i_sb, flags, 0);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}
	req->r_inode = inode;
	FUNC19(inode);

	req->r_num_caps = 1;
	err = FUNC13(mdsc, NULL, req);
	if (!err)
		err = FUNC11(inode, file, req->r_fmode);
	FUNC14(req);
	FUNC18("open result=%d on %llx.%llx\n", err, FUNC17(inode));
out:
	return err;
}