
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_ctx {scalar_t__ cur_ino; int cur_inode_new_gen; TYPE_1__* cmp_key; } ;
typedef enum btrfs_compare_tree_result { ____Placeholder_btrfs_compare_tree_result } btrfs_compare_tree_result ;
struct TYPE_2__ {scalar_t__ objectid; } ;


 int BTRFS_COMPARE_TREE_CHANGED ;
 int BTRFS_COMPARE_TREE_DELETED ;
 int BTRFS_COMPARE_TREE_NEW ;
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 int EIO ;
 int inconsistent_snapshot_error (struct send_ctx*,int,char*) ;
 int record_changed_ref (struct send_ctx*) ;
 int record_deleted_ref (struct send_ctx*) ;
 int record_new_ref (struct send_ctx*) ;

__attribute__((used)) static int changed_ref(struct send_ctx *sctx,
         enum btrfs_compare_tree_result result)
{
 int ret = 0;

 if (sctx->cur_ino != sctx->cmp_key->objectid) {
  inconsistent_snapshot_error(sctx, result, "reference");
  return -EIO;
 }

 if (!sctx->cur_inode_new_gen &&
     sctx->cur_ino != BTRFS_FIRST_FREE_OBJECTID) {
  if (result == BTRFS_COMPARE_TREE_NEW)
   ret = record_new_ref(sctx);
  else if (result == BTRFS_COMPARE_TREE_DELETED)
   ret = record_deleted_ref(sctx);
  else if (result == BTRFS_COMPARE_TREE_CHANGED)
   ret = record_changed_ref(sctx);
 }

 return ret;
}
