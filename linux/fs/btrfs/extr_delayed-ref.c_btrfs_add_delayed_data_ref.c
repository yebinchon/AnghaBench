
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; TYPE_2__* transaction; } ;
struct TYPE_3__ {void* offset; void* ino; void* ref_root; } ;
struct btrfs_ref {int action; scalar_t__ type; void* real_root; int skip_qgroup; TYPE_1__ data_ref; void* parent; void* len; void* bytenr; } ;
struct btrfs_qgroup_extent_record {int dummy; } ;
struct btrfs_fs_info {int flags; } ;
struct btrfs_delayed_ref_root {int lock; } ;
struct btrfs_delayed_ref_head {int node; int * extent_op; void* offset; void* objectid; void* parent; void* root; } ;
struct btrfs_delayed_data_ref {int node; int * extent_op; void* offset; void* objectid; void* parent; void* root; } ;
struct TYPE_4__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 int ASSERT (int) ;
 int BTRFS_ADD_DELAYED_EXTENT ;
 int BTRFS_ADD_DELAYED_REF ;
 int BTRFS_EXTENT_DATA_REF_KEY ;
 int BTRFS_FS_QUOTA_ENABLED ;
 scalar_t__ BTRFS_REF_DATA ;
 int BTRFS_SHARED_DATA_REF_KEY ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct btrfs_delayed_ref_head* add_delayed_ref_head (struct btrfs_trans_handle*,struct btrfs_delayed_ref_head*,struct btrfs_qgroup_extent_record*,int,int*,int*,int*) ;
 int btrfs_delayed_data_ref_cachep ;
 int btrfs_delayed_ref_head_cachep ;
 int btrfs_qgroup_trace_extent_post (struct btrfs_fs_info*,struct btrfs_qgroup_extent_record*) ;
 int btrfs_update_delayed_refs_rsv (struct btrfs_trans_handle*) ;
 int init_delayed_ref_common (struct btrfs_fs_info*,int *,void*,void*,void*,int,int ) ;
 int init_delayed_ref_head (struct btrfs_delayed_ref_head*,struct btrfs_qgroup_extent_record*,void*,void*,void*,void*,int,int,int) ;
 int insert_delayed_ref (struct btrfs_trans_handle*,struct btrfs_delayed_ref_root*,struct btrfs_delayed_ref_head*,int *) ;
 scalar_t__ is_fstree (void*) ;
 struct btrfs_delayed_ref_head* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct btrfs_delayed_ref_head*) ;
 struct btrfs_qgroup_extent_record* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_add_delayed_data_ref (struct btrfs_fs_info*,int *,struct btrfs_delayed_ref_head*,int) ;

int btrfs_add_delayed_data_ref(struct btrfs_trans_handle *trans,
          struct btrfs_ref *generic_ref,
          u64 reserved, int *old_ref_mod,
          int *new_ref_mod)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct btrfs_delayed_data_ref *ref;
 struct btrfs_delayed_ref_head *head_ref;
 struct btrfs_delayed_ref_root *delayed_refs;
 struct btrfs_qgroup_extent_record *record = ((void*)0);
 int qrecord_inserted;
 int action = generic_ref->action;
 int ret;
 u64 bytenr = generic_ref->bytenr;
 u64 num_bytes = generic_ref->len;
 u64 parent = generic_ref->parent;
 u64 ref_root = generic_ref->data_ref.ref_root;
 u64 owner = generic_ref->data_ref.ino;
 u64 offset = generic_ref->data_ref.offset;
 u8 ref_type;

 ASSERT(generic_ref->type == BTRFS_REF_DATA && action);
 ref = kmem_cache_alloc(btrfs_delayed_data_ref_cachep, GFP_NOFS);
 if (!ref)
  return -ENOMEM;

 if (parent)
         ref_type = BTRFS_SHARED_DATA_REF_KEY;
 else
         ref_type = BTRFS_EXTENT_DATA_REF_KEY;
 init_delayed_ref_common(fs_info, &ref->node, bytenr, num_bytes,
    ref_root, action, ref_type);
 ref->root = ref_root;
 ref->parent = parent;
 ref->objectid = owner;
 ref->offset = offset;


 head_ref = kmem_cache_alloc(btrfs_delayed_ref_head_cachep, GFP_NOFS);
 if (!head_ref) {
  kmem_cache_free(btrfs_delayed_data_ref_cachep, ref);
  return -ENOMEM;
 }

 if (test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) &&
     is_fstree(ref_root) &&
     is_fstree(generic_ref->real_root) &&
     !generic_ref->skip_qgroup) {
  record = kzalloc(sizeof(*record), GFP_NOFS);
  if (!record) {
   kmem_cache_free(btrfs_delayed_data_ref_cachep, ref);
   kmem_cache_free(btrfs_delayed_ref_head_cachep,
     head_ref);
   return -ENOMEM;
  }
 }

 init_delayed_ref_head(head_ref, record, bytenr, num_bytes, ref_root,
         reserved, action, 1, 0);
 head_ref->extent_op = ((void*)0);

 delayed_refs = &trans->transaction->delayed_refs;
 spin_lock(&delayed_refs->lock);





 head_ref = add_delayed_ref_head(trans, head_ref, record,
     action, &qrecord_inserted,
     old_ref_mod, new_ref_mod);

 ret = insert_delayed_ref(trans, delayed_refs, head_ref, &ref->node);
 spin_unlock(&delayed_refs->lock);





 btrfs_update_delayed_refs_rsv(trans);

 trace_add_delayed_data_ref(trans->fs_info, &ref->node, ref,
       action == BTRFS_ADD_DELAYED_EXTENT ?
       BTRFS_ADD_DELAYED_REF : action);
 if (ret > 0)
  kmem_cache_free(btrfs_delayed_data_ref_cachep, ref);


 if (qrecord_inserted)
  return btrfs_qgroup_trace_extent_post(fs_info, record);
 return 0;
}
