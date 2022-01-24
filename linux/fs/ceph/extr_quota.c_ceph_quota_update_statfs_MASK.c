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
typedef  int u64 ;
struct kstatfs {int f_blocks; int f_bfree; int f_bavail; } ;
struct inode {int dummy; } ;
struct ceph_snap_realm {int /*<<< orphan*/  inodes_with_caps_lock; scalar_t__ inode; } ;
struct ceph_mds_client {int /*<<< orphan*/  snap_rwsem; } ;
struct ceph_inode_info {int i_max_bytes; int i_rbytes; int /*<<< orphan*/  i_ceph_lock; } ;
struct ceph_fs_client {TYPE_1__* sb; struct ceph_mds_client* mdsc; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_root; } ;

/* Variables and functions */
 int CEPH_BLOCK_SHIFT ; 
 struct ceph_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ceph_snap_realm* FUNC4 (struct ceph_mds_client*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

bool FUNC10(struct ceph_fs_client *fsc, struct kstatfs *buf)
{
	struct ceph_mds_client *mdsc = fsc->mdsc;
	struct ceph_inode_info *ci;
	struct ceph_snap_realm *realm;
	struct inode *in;
	u64 total = 0, used, free;
	bool is_updated = false;

	FUNC3(&mdsc->snap_rwsem);
	realm = FUNC4(mdsc, FUNC2(fsc->sb->s_root), true);
	FUNC9(&mdsc->snap_rwsem);
	if (!realm)
		return false;

	FUNC7(&realm->inodes_with_caps_lock);
	in = realm->inode ? FUNC5(realm->inode) : NULL;
	FUNC8(&realm->inodes_with_caps_lock);
	if (in) {
		ci = FUNC0(in);
		FUNC7(&ci->i_ceph_lock);
		if (ci->i_max_bytes) {
			total = ci->i_max_bytes >> CEPH_BLOCK_SHIFT;
			used = ci->i_rbytes >> CEPH_BLOCK_SHIFT;
			/* It is possible for a quota to be exceeded.
			 * Report 'zero' in that case
			 */
			free = total > used ? total - used : 0;
		}
		FUNC8(&ci->i_ceph_lock);
		if (total) {
			buf->f_blocks = total;
			buf->f_bfree = free;
			buf->f_bavail = free;
			is_updated = true;
		}
		FUNC6(in);
	}
	FUNC1(mdsc, realm);

	return is_updated;
}