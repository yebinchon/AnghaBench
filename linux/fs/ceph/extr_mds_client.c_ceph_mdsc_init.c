
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mds_client {int last_cap_flush_tid; int nodename; void* pool_perm_tree; int pool_perm_rwsem; int snapid_map_lru; void* snapid_map_tree; int snapid_map_lock; int dentry_dir_leases; int dentry_leases; int dentry_list_lock; int cap_reclaim_pending; int cap_reclaim_work; int cap_flushing_wq; int cap_dirty_lock; scalar_t__ num_cap_flushing; int cap_dirty_migrating; int cap_dirty; int cap_flush_list; int snap_flush_lock; int snap_flush_list; int cap_delay_lock; int cap_delay_list; int last_renew_caps; int delayed_work; void* request_tree; scalar_t__ oldest_tid; scalar_t__ last_tid; int snap_empty_lock; scalar_t__ num_snap_realms; int snap_empty; void* snap_realms; int snap_rwsem; scalar_t__ last_snap_seq; int quotarealms_inodes_mutex; void* quotarealms_inodes; int quotarealms_count; scalar_t__ stopping; scalar_t__ max_sessions; int num_sessions; int * sessions; int waiting_for_map; int session_close_wq; int safe_umount_waiters; void* mdsmap; int mutex; struct ceph_fs_client* fsc; } ;
struct ceph_fs_client {int mount_options; struct ceph_mds_client* mdsc; } ;
struct TYPE_2__ {int nodename; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 void* RB_ROOT ;
 int atomic64_set (int *,int ) ;
 int atomic_set (int *,int ) ;
 int ceph_adjust_caps_max_min (struct ceph_mds_client*,int ) ;
 int ceph_cap_reclaim_work ;
 int ceph_caps_init (struct ceph_mds_client*) ;
 int delayed_work ;
 int init_completion (int *) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 int kfree (struct ceph_mds_client*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,int ,int) ;
 TYPE_1__* utsname () ;

int ceph_mdsc_init(struct ceph_fs_client *fsc)

{
 struct ceph_mds_client *mdsc;

 mdsc = kzalloc(sizeof(struct ceph_mds_client), GFP_NOFS);
 if (!mdsc)
  return -ENOMEM;
 mdsc->fsc = fsc;
 mutex_init(&mdsc->mutex);
 mdsc->mdsmap = kzalloc(sizeof(*mdsc->mdsmap), GFP_NOFS);
 if (!mdsc->mdsmap) {
  kfree(mdsc);
  return -ENOMEM;
 }

 fsc->mdsc = mdsc;
 init_completion(&mdsc->safe_umount_waiters);
 init_waitqueue_head(&mdsc->session_close_wq);
 INIT_LIST_HEAD(&mdsc->waiting_for_map);
 mdsc->sessions = ((void*)0);
 atomic_set(&mdsc->num_sessions, 0);
 mdsc->max_sessions = 0;
 mdsc->stopping = 0;
 atomic64_set(&mdsc->quotarealms_count, 0);
 mdsc->quotarealms_inodes = RB_ROOT;
 mutex_init(&mdsc->quotarealms_inodes_mutex);
 mdsc->last_snap_seq = 0;
 init_rwsem(&mdsc->snap_rwsem);
 mdsc->snap_realms = RB_ROOT;
 INIT_LIST_HEAD(&mdsc->snap_empty);
 mdsc->num_snap_realms = 0;
 spin_lock_init(&mdsc->snap_empty_lock);
 mdsc->last_tid = 0;
 mdsc->oldest_tid = 0;
 mdsc->request_tree = RB_ROOT;
 INIT_DELAYED_WORK(&mdsc->delayed_work, delayed_work);
 mdsc->last_renew_caps = jiffies;
 INIT_LIST_HEAD(&mdsc->cap_delay_list);
 spin_lock_init(&mdsc->cap_delay_lock);
 INIT_LIST_HEAD(&mdsc->snap_flush_list);
 spin_lock_init(&mdsc->snap_flush_lock);
 mdsc->last_cap_flush_tid = 1;
 INIT_LIST_HEAD(&mdsc->cap_flush_list);
 INIT_LIST_HEAD(&mdsc->cap_dirty);
 INIT_LIST_HEAD(&mdsc->cap_dirty_migrating);
 mdsc->num_cap_flushing = 0;
 spin_lock_init(&mdsc->cap_dirty_lock);
 init_waitqueue_head(&mdsc->cap_flushing_wq);
 INIT_WORK(&mdsc->cap_reclaim_work, ceph_cap_reclaim_work);
 atomic_set(&mdsc->cap_reclaim_pending, 0);

 spin_lock_init(&mdsc->dentry_list_lock);
 INIT_LIST_HEAD(&mdsc->dentry_leases);
 INIT_LIST_HEAD(&mdsc->dentry_dir_leases);

 ceph_caps_init(mdsc);
 ceph_adjust_caps_max_min(mdsc, fsc->mount_options);

 spin_lock_init(&mdsc->snapid_map_lock);
 mdsc->snapid_map_tree = RB_ROOT;
 INIT_LIST_HEAD(&mdsc->snapid_map_lru);

 init_rwsem(&mdsc->pool_perm_rwsem);
 mdsc->pool_perm_tree = RB_ROOT;

 strscpy(mdsc->nodename, utsname()->nodename,
  sizeof(mdsc->nodename));
 return 0;
}
