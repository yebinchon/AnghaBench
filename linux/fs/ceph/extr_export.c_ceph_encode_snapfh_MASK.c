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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct ceph_nfs_snapfh {scalar_t__ snapid; void* ino; scalar_t__ hash; void* parent_ino; } ;

/* Variables and functions */
 scalar_t__ CEPH_SNAPDIR ; 
 int EINVAL ; 
 int FILEID_BTRFS_WITH_PARENT ; 
 int FILEID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*,struct dentry*) ; 
 void* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct dentry* FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct inode *inode, u32 *rawfh, int *max_len,
			      struct inode *parent_inode)
{
	static const int snap_handle_length =
		sizeof(struct ceph_nfs_snapfh) >> 2;
	struct ceph_nfs_snapfh *sfh = (void *)rawfh;
	u64 snapid = FUNC3(inode);
	int ret;
	bool no_parent = true;

	if (*max_len < snap_handle_length) {
		*max_len = snap_handle_length;
		ret = FILEID_INVALID;
		goto out;
	}

	ret =  -EINVAL;
	if (snapid != CEPH_SNAPDIR) {
		struct inode *dir;
		struct dentry *dentry = FUNC5(inode);
		if (!dentry)
			goto out;

		FUNC9();
		dir = FUNC6(dentry->d_parent);
		if (FUNC3(dir) != CEPH_SNAPDIR) {
			sfh->parent_ino = FUNC2(dir);
			sfh->hash = FUNC1(dir, dentry);
			no_parent = false;
		}
		FUNC10();
		FUNC8(dentry);
	}

	if (no_parent) {
		if (!FUNC0(inode->i_mode))
			goto out;
		sfh->parent_ino = sfh->ino;
		sfh->hash = 0;
	}
	sfh->ino = FUNC2(inode);
	sfh->snapid = snapid;

	*max_len = snap_handle_length;
	ret = FILEID_BTRFS_WITH_PARENT;
out:
	FUNC7("encode_snapfh %llx.%llx ret=%d\n", FUNC4(inode), ret);
	return ret;
}