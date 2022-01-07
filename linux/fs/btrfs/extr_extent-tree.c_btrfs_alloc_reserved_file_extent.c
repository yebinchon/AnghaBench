
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {int fs_info; TYPE_1__ root_key; } ;
struct btrfs_ref {int member_0; } ;
struct btrfs_key {int offset; int objectid; } ;


 int BTRFS_ADD_DELAYED_EXTENT ;
 int BTRFS_TREE_LOG_OBJECTID ;
 int BUG_ON (int) ;
 int btrfs_add_delayed_data_ref (struct btrfs_trans_handle*,struct btrfs_ref*,int ,int *,int *) ;
 int btrfs_init_data_ref (struct btrfs_ref*,int ,int ,int ) ;
 int btrfs_init_generic_ref (struct btrfs_ref*,int ,int ,int ,int ) ;
 int btrfs_ref_tree_mod (int ,struct btrfs_ref*) ;

int btrfs_alloc_reserved_file_extent(struct btrfs_trans_handle *trans,
         struct btrfs_root *root, u64 owner,
         u64 offset, u64 ram_bytes,
         struct btrfs_key *ins)
{
 struct btrfs_ref generic_ref = { 0 };
 int ret;

 BUG_ON(root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID);

 btrfs_init_generic_ref(&generic_ref, BTRFS_ADD_DELAYED_EXTENT,
          ins->objectid, ins->offset, 0);
 btrfs_init_data_ref(&generic_ref, root->root_key.objectid, owner, offset);
 btrfs_ref_tree_mod(root->fs_info, &generic_ref);
 ret = btrfs_add_delayed_data_ref(trans, &generic_ref,
      ram_bytes, ((void*)0), ((void*)0));
 return ret;
}
