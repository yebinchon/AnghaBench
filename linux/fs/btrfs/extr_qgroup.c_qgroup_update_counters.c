
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ulist_node {int dummy; } ;
struct ulist_iterator {int dummy; } ;
struct ulist {int dummy; } ;
struct btrfs_qgroup {int excl_cmpr; int excl; int rfer_cmpr; int rfer; } ;
struct btrfs_fs_info {int dummy; } ;


 int ULIST_ITER_INIT (struct ulist_iterator*) ;
 scalar_t__ btrfs_qgroup_get_new_refcnt (struct btrfs_qgroup*,scalar_t__) ;
 scalar_t__ btrfs_qgroup_get_old_refcnt (struct btrfs_qgroup*,scalar_t__) ;
 int qgroup_dirty (struct btrfs_fs_info*,struct btrfs_qgroup*) ;
 int trace_qgroup_update_counters (struct btrfs_fs_info*,struct btrfs_qgroup*,scalar_t__,scalar_t__) ;
 struct ulist_node* ulist_next (struct ulist*,struct ulist_iterator*) ;
 struct btrfs_qgroup* unode_aux_to_qgroup (struct ulist_node*) ;

__attribute__((used)) static int qgroup_update_counters(struct btrfs_fs_info *fs_info,
      struct ulist *qgroups,
      u64 nr_old_roots,
      u64 nr_new_roots,
      u64 num_bytes, u64 seq)
{
 struct ulist_node *unode;
 struct ulist_iterator uiter;
 struct btrfs_qgroup *qg;
 u64 cur_new_count, cur_old_count;

 ULIST_ITER_INIT(&uiter);
 while ((unode = ulist_next(qgroups, &uiter))) {
  bool dirty = 0;

  qg = unode_aux_to_qgroup(unode);
  cur_old_count = btrfs_qgroup_get_old_refcnt(qg, seq);
  cur_new_count = btrfs_qgroup_get_new_refcnt(qg, seq);

  trace_qgroup_update_counters(fs_info, qg, cur_old_count,
          cur_new_count);


  if (cur_old_count == 0 && cur_new_count > 0) {
   qg->rfer += num_bytes;
   qg->rfer_cmpr += num_bytes;
   dirty = 1;
  }
  if (cur_old_count > 0 && cur_new_count == 0) {
   qg->rfer -= num_bytes;
   qg->rfer_cmpr -= num_bytes;
   dirty = 1;
  }



  if (cur_old_count == nr_old_roots &&
      cur_new_count < nr_new_roots) {

   if (cur_old_count != 0) {
    qg->excl -= num_bytes;
    qg->excl_cmpr -= num_bytes;
    dirty = 1;
   }
  }


  if (cur_old_count < nr_old_roots &&
      cur_new_count == nr_new_roots) {

   if (cur_new_count != 0) {
    qg->excl += num_bytes;
    qg->excl_cmpr += num_bytes;
    dirty = 1;
   }
  }


  if (cur_old_count == nr_old_roots &&
      cur_new_count == nr_new_roots) {
   if (cur_old_count == 0) {


    if (cur_new_count != 0) {

     qg->excl += num_bytes;
     qg->excl_cmpr += num_bytes;
     dirty = 1;
    }

   } else {


    if (cur_new_count == 0) {

     qg->excl -= num_bytes;
     qg->excl_cmpr -= num_bytes;
     dirty = 1;
    }

   }
  }

  if (dirty)
   qgroup_dirty(fs_info, qg);
 }
 return 0;
}
