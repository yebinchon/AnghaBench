
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int cur_inode_mode; int cur_inode_deleted; int cur_inode_new_gen; int cur_inode_new; scalar_t__ parent_root; } ;


 scalar_t__ S_ISREG (int ) ;

__attribute__((used)) static int need_send_hole(struct send_ctx *sctx)
{
 return (sctx->parent_root && !sctx->cur_inode_new &&
  !sctx->cur_inode_new_gen && !sctx->cur_inode_deleted &&
  S_ISREG(sctx->cur_inode_mode));
}
