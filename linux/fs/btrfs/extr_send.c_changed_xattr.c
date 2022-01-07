
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_ctx {scalar_t__ cur_ino; int cur_inode_deleted; int cur_inode_new_gen; TYPE_1__* cmp_key; } ;
typedef enum btrfs_compare_tree_result { ____Placeholder_btrfs_compare_tree_result } btrfs_compare_tree_result ;
struct TYPE_2__ {scalar_t__ objectid; } ;


 int BTRFS_COMPARE_TREE_CHANGED ;
 int BTRFS_COMPARE_TREE_DELETED ;
 int BTRFS_COMPARE_TREE_NEW ;
 int EIO ;
 int inconsistent_snapshot_error (struct send_ctx*,int,char*) ;
 int process_changed_xattr (struct send_ctx*) ;
 int process_deleted_xattr (struct send_ctx*) ;
 int process_new_xattr (struct send_ctx*) ;

__attribute__((used)) static int changed_xattr(struct send_ctx *sctx,
    enum btrfs_compare_tree_result result)
{
 int ret = 0;

 if (sctx->cur_ino != sctx->cmp_key->objectid) {
  inconsistent_snapshot_error(sctx, result, "xattr");
  return -EIO;
 }

 if (!sctx->cur_inode_new_gen && !sctx->cur_inode_deleted) {
  if (result == BTRFS_COMPARE_TREE_NEW)
   ret = process_new_xattr(sctx);
  else if (result == BTRFS_COMPARE_TREE_DELETED)
   ret = process_deleted_xattr(sctx);
  else if (result == BTRFS_COMPARE_TREE_CHANGED)
   ret = process_changed_xattr(sctx);
 }

 return ret;
}
