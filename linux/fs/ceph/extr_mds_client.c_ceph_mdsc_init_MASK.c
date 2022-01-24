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
struct ceph_mds_client {int last_cap_flush_tid; int /*<<< orphan*/  nodename; void* pool_perm_tree; int /*<<< orphan*/  pool_perm_rwsem; int /*<<< orphan*/  snapid_map_lru; void* snapid_map_tree; int /*<<< orphan*/  snapid_map_lock; int /*<<< orphan*/  dentry_dir_leases; int /*<<< orphan*/  dentry_leases; int /*<<< orphan*/  dentry_list_lock; int /*<<< orphan*/  cap_reclaim_pending; int /*<<< orphan*/  cap_reclaim_work; int /*<<< orphan*/  cap_flushing_wq; int /*<<< orphan*/  cap_dirty_lock; scalar_t__ num_cap_flushing; int /*<<< orphan*/  cap_dirty_migrating; int /*<<< orphan*/  cap_dirty; int /*<<< orphan*/  cap_flush_list; int /*<<< orphan*/  snap_flush_lock; int /*<<< orphan*/  snap_flush_list; int /*<<< orphan*/  cap_delay_lock; int /*<<< orphan*/  cap_delay_list; int /*<<< orphan*/  last_renew_caps; int /*<<< orphan*/  delayed_work; void* request_tree; scalar_t__ oldest_tid; scalar_t__ last_tid; int /*<<< orphan*/  snap_empty_lock; scalar_t__ num_snap_realms; int /*<<< orphan*/  snap_empty; void* snap_realms; int /*<<< orphan*/  snap_rwsem; scalar_t__ last_snap_seq; int /*<<< orphan*/  quotarealms_inodes_mutex; void* quotarealms_inodes; int /*<<< orphan*/  quotarealms_count; scalar_t__ stopping; scalar_t__ max_sessions; int /*<<< orphan*/  num_sessions; int /*<<< orphan*/ * sessions; int /*<<< orphan*/  waiting_for_map; int /*<<< orphan*/  session_close_wq; int /*<<< orphan*/  safe_umount_waiters; void* mdsmap; int /*<<< orphan*/  mutex; struct ceph_fs_client* fsc; } ;
struct ceph_fs_client {int /*<<< orphan*/  mount_options; struct ceph_mds_client* mdsc; } ;
struct TYPE_2__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ceph_cap_reclaim_work ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  delayed_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mds_client*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC15 () ; 

int FUNC16(struct ceph_fs_client *fsc)

{
	struct ceph_mds_client *mdsc;

	mdsc = FUNC11(sizeof(struct ceph_mds_client), GFP_NOFS);
	if (!mdsc)
		return -ENOMEM;
	mdsc->fsc = fsc;
	FUNC12(&mdsc->mutex);
	mdsc->mdsmap = FUNC11(sizeof(*mdsc->mdsmap), GFP_NOFS);
	if (!mdsc->mdsmap) {
		FUNC10(mdsc);
		return -ENOMEM;
	}

	fsc->mdsc = mdsc;
	FUNC7(&mdsc->safe_umount_waiters);
	FUNC9(&mdsc->session_close_wq);
	FUNC1(&mdsc->waiting_for_map);
	mdsc->sessions = NULL;
	FUNC4(&mdsc->num_sessions, 0);
	mdsc->max_sessions = 0;
	mdsc->stopping = 0;
	FUNC3(&mdsc->quotarealms_count, 0);
	mdsc->quotarealms_inodes = RB_ROOT;
	FUNC12(&mdsc->quotarealms_inodes_mutex);
	mdsc->last_snap_seq = 0;
	FUNC8(&mdsc->snap_rwsem);
	mdsc->snap_realms = RB_ROOT;
	FUNC1(&mdsc->snap_empty);
	mdsc->num_snap_realms = 0;
	FUNC13(&mdsc->snap_empty_lock);
	mdsc->last_tid = 0;
	mdsc->oldest_tid = 0;
	mdsc->request_tree = RB_ROOT;
	FUNC0(&mdsc->delayed_work, delayed_work);
	mdsc->last_renew_caps = jiffies;
	FUNC1(&mdsc->cap_delay_list);
	FUNC13(&mdsc->cap_delay_lock);
	FUNC1(&mdsc->snap_flush_list);
	FUNC13(&mdsc->snap_flush_lock);
	mdsc->last_cap_flush_tid = 1;
	FUNC1(&mdsc->cap_flush_list);
	FUNC1(&mdsc->cap_dirty);
	FUNC1(&mdsc->cap_dirty_migrating);
	mdsc->num_cap_flushing = 0;
	FUNC13(&mdsc->cap_dirty_lock);
	FUNC9(&mdsc->cap_flushing_wq);
	FUNC2(&mdsc->cap_reclaim_work, ceph_cap_reclaim_work);
	FUNC4(&mdsc->cap_reclaim_pending, 0);

	FUNC13(&mdsc->dentry_list_lock);
	FUNC1(&mdsc->dentry_leases);
	FUNC1(&mdsc->dentry_dir_leases);

	FUNC6(mdsc);
	FUNC5(mdsc, fsc->mount_options);

	FUNC13(&mdsc->snapid_map_lock);
	mdsc->snapid_map_tree = RB_ROOT;
	FUNC1(&mdsc->snapid_map_lru);

	FUNC8(&mdsc->pool_perm_rwsem);
	mdsc->pool_perm_tree = RB_ROOT;

	FUNC14(mdsc->nodename, FUNC15()->nodename,
		sizeof(mdsc->nodename));
	return 0;
}