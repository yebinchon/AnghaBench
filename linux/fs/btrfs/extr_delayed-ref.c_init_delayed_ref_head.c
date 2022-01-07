
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_qgroup_extent_record {int * old_roots; void* num_bytes; void* bytenr; void* data_rsv_refroot; void* data_rsv; } ;
struct btrfs_delayed_ref_head {int ref_mod; int must_insert_reserved; int is_data; int is_system; int total_ref_mod; int mutex; int lock; scalar_t__ processing; int href_node; int ref_add_list; int ref_tree; void* num_bytes; void* bytenr; int refs; } ;


 int BTRFS_ADD_DELAYED_EXTENT ;
 int BTRFS_DROP_DELAYED_REF ;
 int BTRFS_UPDATE_DELAYED_HEAD ;
 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int RB_ROOT_CACHED ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_delayed_ref_head(struct btrfs_delayed_ref_head *head_ref,
      struct btrfs_qgroup_extent_record *qrecord,
      u64 bytenr, u64 num_bytes, u64 ref_root,
      u64 reserved, int action, bool is_data,
      bool is_system)
{
 int count_mod = 1;
 int must_insert_reserved = 0;


 BUG_ON(!is_data && reserved);





 if (action == BTRFS_UPDATE_DELAYED_HEAD)
  count_mod = 0;
 else if (action == BTRFS_DROP_DELAYED_REF)
  count_mod = -1;
 if (action == BTRFS_ADD_DELAYED_EXTENT)
  must_insert_reserved = 1;
 else
  must_insert_reserved = 0;

 refcount_set(&head_ref->refs, 1);
 head_ref->bytenr = bytenr;
 head_ref->num_bytes = num_bytes;
 head_ref->ref_mod = count_mod;
 head_ref->must_insert_reserved = must_insert_reserved;
 head_ref->is_data = is_data;
 head_ref->is_system = is_system;
 head_ref->ref_tree = RB_ROOT_CACHED;
 INIT_LIST_HEAD(&head_ref->ref_add_list);
 RB_CLEAR_NODE(&head_ref->href_node);
 head_ref->processing = 0;
 head_ref->total_ref_mod = count_mod;
 spin_lock_init(&head_ref->lock);
 mutex_init(&head_ref->mutex);

 if (qrecord) {
  if (ref_root && reserved) {
   qrecord->data_rsv = reserved;
   qrecord->data_rsv_refroot = ref_root;
  }
  qrecord->bytenr = bytenr;
  qrecord->num_bytes = num_bytes;
  qrecord->old_roots = ((void*)0);
 }
}
