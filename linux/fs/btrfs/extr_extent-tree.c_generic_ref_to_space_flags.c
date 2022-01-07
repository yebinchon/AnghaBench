
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ root; } ;
struct btrfs_ref {scalar_t__ type; TYPE_1__ tree_ref; } ;


 int BTRFS_BLOCK_GROUP_DATA ;
 int BTRFS_BLOCK_GROUP_METADATA ;
 int BTRFS_BLOCK_GROUP_SYSTEM ;
 scalar_t__ BTRFS_CHUNK_TREE_OBJECTID ;
 scalar_t__ BTRFS_REF_METADATA ;

__attribute__((used)) static u64 generic_ref_to_space_flags(struct btrfs_ref *ref)
{
 if (ref->type == BTRFS_REF_METADATA) {
  if (ref->tree_ref.root == BTRFS_CHUNK_TREE_OBJECTID)
   return BTRFS_BLOCK_GROUP_SYSTEM;
  else
   return BTRFS_BLOCK_GROUP_METADATA;
 }
 return BTRFS_BLOCK_GROUP_DATA;
}
