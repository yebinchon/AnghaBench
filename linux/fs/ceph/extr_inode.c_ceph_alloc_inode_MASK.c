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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int dirty; scalar_t__ index_version; scalar_t__ version; scalar_t__ vals_size; scalar_t__ names_size; scalar_t__ count; void* index; int /*<<< orphan*/ * prealloc_blob; int /*<<< orphan*/ * blob; } ;
struct TYPE_3__ {int /*<<< orphan*/  pool_ns; } ;
struct ceph_inode_info {struct inode vfs_inode; scalar_t__ i_meta_err; int /*<<< orphan*/  i_btime; scalar_t__ i_work_mask; int /*<<< orphan*/  i_work; int /*<<< orphan*/  i_snap_flush_item; int /*<<< orphan*/  i_snap_realm_item; int /*<<< orphan*/ * i_snap_realm; int /*<<< orphan*/  i_unsafe_lock; int /*<<< orphan*/  i_unsafe_iops; int /*<<< orphan*/  i_unsafe_dirops; scalar_t__ i_rdcache_revoking; scalar_t__ i_rdcache_gen; int /*<<< orphan*/  i_shared_gen; int /*<<< orphan*/  i_filelock_ref; scalar_t__ i_wrbuffer_ref_head; scalar_t__ i_wrbuffer_ref; scalar_t__ i_wb_ref; scalar_t__ i_wr_ref; scalar_t__ i_rdcache_ref; scalar_t__ i_rd_ref; scalar_t__ i_pin_ref; scalar_t__ i_requested_max_size; scalar_t__ i_wanted_max_size; scalar_t__ i_reported_size; scalar_t__ i_max_size; scalar_t__ i_truncate_pending; scalar_t__ i_truncate_size; scalar_t__ i_truncate_seq; int /*<<< orphan*/  i_truncate_mutex; scalar_t__* i_nr_by_mode; scalar_t__ i_snap_caps; int /*<<< orphan*/ * i_head_snapc; int /*<<< orphan*/  i_cap_snaps; int /*<<< orphan*/  i_cap_delay_list; scalar_t__ i_hold_caps_max; scalar_t__ i_hold_caps_min; int /*<<< orphan*/  i_cap_wq; int /*<<< orphan*/  i_cap_flush_list; int /*<<< orphan*/ * i_prealloc_cap_flush; int /*<<< orphan*/  i_flushing_item; int /*<<< orphan*/  i_dirty_item; scalar_t__ i_flushing_caps; scalar_t__ i_dirty_caps; int /*<<< orphan*/ * i_auth_cap; void* i_caps; TYPE_2__ i_xattrs; int /*<<< orphan*/  i_fragtree_mutex; void* i_fragtree; TYPE_1__ i_layout; int /*<<< orphan*/  i_dir_layout; scalar_t__ i_max_files; scalar_t__ i_max_bytes; int /*<<< orphan*/ * i_symlink; int /*<<< orphan*/ * i_complete_seq; int /*<<< orphan*/  i_release_count; int /*<<< orphan*/  i_ordered_count; scalar_t__ i_ceph_flags; scalar_t__ i_time_warp_seq; scalar_t__ i_inline_version; scalar_t__ i_version; int /*<<< orphan*/  i_ceph_lock; } ;

/* Variables and functions */
 int CEPH_FILE_MODE_BITS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  ceph_inode_cachep ; 
 int /*<<< orphan*/  ceph_inode_work ; 
 int /*<<< orphan*/  FUNC6 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct inode *FUNC12(struct super_block *sb)
{
	struct ceph_inode_info *ci;
	int i;

	ci = FUNC8(ceph_inode_cachep, GFP_NOFS);
	if (!ci)
		return NULL;

	FUNC6("alloc_inode %p\n", &ci->vfs_inode);

	FUNC11(&ci->i_ceph_lock);

	ci->i_version = 0;
	ci->i_inline_version = 0;
	ci->i_time_warp_seq = 0;
	ci->i_ceph_flags = 0;
	FUNC3(&ci->i_ordered_count, 1);
	FUNC3(&ci->i_release_count, 1);
	FUNC3(&ci->i_complete_seq[0], 0);
	FUNC3(&ci->i_complete_seq[1], 0);
	ci->i_symlink = NULL;

	ci->i_max_bytes = 0;
	ci->i_max_files = 0;

	FUNC9(&ci->i_dir_layout, 0, sizeof(ci->i_dir_layout));
	FUNC2(ci->i_layout.pool_ns, NULL);

	ci->i_fragtree = RB_ROOT;
	FUNC10(&ci->i_fragtree_mutex);

	ci->i_xattrs.blob = NULL;
	ci->i_xattrs.prealloc_blob = NULL;
	ci->i_xattrs.dirty = false;
	ci->i_xattrs.index = RB_ROOT;
	ci->i_xattrs.count = 0;
	ci->i_xattrs.names_size = 0;
	ci->i_xattrs.vals_size = 0;
	ci->i_xattrs.version = 0;
	ci->i_xattrs.index_version = 0;

	ci->i_caps = RB_ROOT;
	ci->i_auth_cap = NULL;
	ci->i_dirty_caps = 0;
	ci->i_flushing_caps = 0;
	FUNC0(&ci->i_dirty_item);
	FUNC0(&ci->i_flushing_item);
	ci->i_prealloc_cap_flush = NULL;
	FUNC0(&ci->i_cap_flush_list);
	FUNC7(&ci->i_cap_wq);
	ci->i_hold_caps_min = 0;
	ci->i_hold_caps_max = 0;
	FUNC0(&ci->i_cap_delay_list);
	FUNC0(&ci->i_cap_snaps);
	ci->i_head_snapc = NULL;
	ci->i_snap_caps = 0;

	for (i = 0; i < CEPH_FILE_MODE_BITS; i++)
		ci->i_nr_by_mode[i] = 0;

	FUNC10(&ci->i_truncate_mutex);
	ci->i_truncate_seq = 0;
	ci->i_truncate_size = 0;
	ci->i_truncate_pending = 0;

	ci->i_max_size = 0;
	ci->i_reported_size = 0;
	ci->i_wanted_max_size = 0;
	ci->i_requested_max_size = 0;

	ci->i_pin_ref = 0;
	ci->i_rd_ref = 0;
	ci->i_rdcache_ref = 0;
	ci->i_wr_ref = 0;
	ci->i_wb_ref = 0;
	ci->i_wrbuffer_ref = 0;
	ci->i_wrbuffer_ref_head = 0;
	FUNC4(&ci->i_filelock_ref, 0);
	FUNC4(&ci->i_shared_gen, 1);
	ci->i_rdcache_gen = 0;
	ci->i_rdcache_revoking = 0;

	FUNC0(&ci->i_unsafe_dirops);
	FUNC0(&ci->i_unsafe_iops);
	FUNC11(&ci->i_unsafe_lock);

	ci->i_snap_realm = NULL;
	FUNC0(&ci->i_snap_realm_item);
	FUNC0(&ci->i_snap_flush_item);

	FUNC1(&ci->i_work, ceph_inode_work);
	ci->i_work_mask = 0;
	FUNC9(&ci->i_btime, '\0', sizeof(ci->i_btime));

	FUNC5(ci);

	ci->i_meta_err = 0;

	return &ci->vfs_inode;
}