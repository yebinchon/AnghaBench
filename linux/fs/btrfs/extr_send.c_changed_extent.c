
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_ctx {scalar_t__ cur_ino; TYPE_1__* cmp_key; int left_path; int cur_inode_deleted; int cur_inode_new_gen; } ;
typedef enum btrfs_compare_tree_result { ____Placeholder_btrfs_compare_tree_result } btrfs_compare_tree_result ;
struct TYPE_2__ {scalar_t__ objectid; } ;


 int BTRFS_COMPARE_TREE_DELETED ;
 int process_extent (struct send_ctx*,int ,TYPE_1__*) ;

__attribute__((used)) static int changed_extent(struct send_ctx *sctx,
     enum btrfs_compare_tree_result result)
{
 int ret = 0;
 if (sctx->cur_ino != sctx->cmp_key->objectid)
  return 0;

 if (!sctx->cur_inode_new_gen && !sctx->cur_inode_deleted) {
  if (result != BTRFS_COMPARE_TREE_DELETED)
   ret = process_extent(sctx, sctx->left_path,
     sctx->cmp_key);
 }

 return ret;
}
