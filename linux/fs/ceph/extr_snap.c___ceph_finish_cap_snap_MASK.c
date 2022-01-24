#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_sb; } ;
struct ceph_mds_client {int /*<<< orphan*/  snap_flush_lock; int /*<<< orphan*/  snap_flush_list; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_snap_flush_item; int /*<<< orphan*/  i_ceph_flags; int /*<<< orphan*/  i_truncate_seq; int /*<<< orphan*/  i_truncate_size; int /*<<< orphan*/  i_time_warp_seq; int /*<<< orphan*/  i_btime; struct inode vfs_inode; } ;
struct ceph_cap_snap {int /*<<< orphan*/  size; int /*<<< orphan*/  dirty; TYPE_1__* context; scalar_t__ dirty_pages; int /*<<< orphan*/  truncate_seq; int /*<<< orphan*/  truncate_size; int /*<<< orphan*/  time_warp_seq; int /*<<< orphan*/  change_attr; int /*<<< orphan*/  btime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  atime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  writing; } ;
struct TYPE_4__ {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CEPH_I_FLUSH_SNAPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*,struct ceph_cap_snap*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ceph_inode_info *ci,
			    struct ceph_cap_snap *capsnap)
{
	struct inode *inode = &ci->vfs_inode;
	struct ceph_mds_client *mdsc = FUNC2(inode->i_sb)->mdsc;

	FUNC0(capsnap->writing);
	capsnap->size = inode->i_size;
	capsnap->mtime = inode->i_mtime;
	capsnap->atime = inode->i_atime;
	capsnap->ctime = inode->i_ctime;
	capsnap->btime = ci->i_btime;
	capsnap->change_attr = FUNC4(inode);
	capsnap->time_warp_seq = ci->i_time_warp_seq;
	capsnap->truncate_size = ci->i_truncate_size;
	capsnap->truncate_seq = ci->i_truncate_seq;
	if (capsnap->dirty_pages) {
		FUNC3("finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu "
		     "still has %d dirty pages\n", inode, capsnap,
		     capsnap->context, capsnap->context->seq,
		     FUNC1(capsnap->dirty), capsnap->size,
		     capsnap->dirty_pages);
		return 0;
	}

	ci->i_ceph_flags |= CEPH_I_FLUSH_SNAPS;
	FUNC3("finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu\n",
	     inode, capsnap, capsnap->context,
	     capsnap->context->seq, FUNC1(capsnap->dirty),
	     capsnap->size);

	FUNC7(&mdsc->snap_flush_lock);
	if (FUNC6(&ci->i_snap_flush_item))
		FUNC5(&ci->i_snap_flush_item, &mdsc->snap_flush_list);
	FUNC8(&mdsc->snap_flush_lock);
	return 1;  /* caller may want to ceph_flush_snaps */
}