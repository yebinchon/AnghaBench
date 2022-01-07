
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_ctx {int clone_roots_cnt; TYPE_1__* clone_roots; struct btrfs_root* parent_root; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 int U64_MAX ;
 int btrfs_start_delalloc_snapshot (struct btrfs_root*) ;
 int btrfs_wait_ordered_extents (struct btrfs_root*,int ,int ,int ) ;

__attribute__((used)) static int flush_delalloc_roots(struct send_ctx *sctx)
{
 struct btrfs_root *root = sctx->parent_root;
 int ret;
 int i;

 if (root) {
  ret = btrfs_start_delalloc_snapshot(root);
  if (ret)
   return ret;
  btrfs_wait_ordered_extents(root, U64_MAX, 0, U64_MAX);
 }

 for (i = 0; i < sctx->clone_roots_cnt; i++) {
  root = sctx->clone_roots[i].root;
  ret = btrfs_start_delalloc_snapshot(root);
  if (ret)
   return ret;
  btrfs_wait_ordered_extents(root, U64_MAX, 0, U64_MAX);
 }

 return 0;
}
