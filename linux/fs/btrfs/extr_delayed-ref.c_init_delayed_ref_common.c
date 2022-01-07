
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u64 ;
struct btrfs_fs_info {int tree_mod_seq; } ;
struct btrfs_delayed_ref_node {int ref_mod; int action; int in_tree; int add_list; int ref_node; int type; void* seq; scalar_t__ is_head; void* num_bytes; void* bytenr; int refs; } ;


 int BTRFS_ADD_DELAYED_EXTENT ;
 int BTRFS_ADD_DELAYED_REF ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 void* atomic64_read (int *) ;
 scalar_t__ is_fstree (void*) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void init_delayed_ref_common(struct btrfs_fs_info *fs_info,
        struct btrfs_delayed_ref_node *ref,
        u64 bytenr, u64 num_bytes, u64 ref_root,
        int action, u8 ref_type)
{
 u64 seq = 0;

 if (action == BTRFS_ADD_DELAYED_EXTENT)
  action = BTRFS_ADD_DELAYED_REF;

 if (is_fstree(ref_root))
  seq = atomic64_read(&fs_info->tree_mod_seq);

 refcount_set(&ref->refs, 1);
 ref->bytenr = bytenr;
 ref->num_bytes = num_bytes;
 ref->ref_mod = 1;
 ref->action = action;
 ref->is_head = 0;
 ref->in_tree = 1;
 ref->seq = seq;
 ref->type = ref_type;
 RB_CLEAR_NODE(&ref->ref_node);
 INIT_LIST_HEAD(&ref->add_list);
}
