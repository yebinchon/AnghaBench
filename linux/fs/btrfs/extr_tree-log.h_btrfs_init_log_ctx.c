
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct btrfs_log_ctx {int log_new_dentries; int list; struct inode* inode; scalar_t__ log_transid; scalar_t__ log_ret; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static inline void btrfs_init_log_ctx(struct btrfs_log_ctx *ctx,
          struct inode *inode)
{
 ctx->log_ret = 0;
 ctx->log_transid = 0;
 ctx->log_new_dentries = 0;
 ctx->inode = inode;
 INIT_LIST_HEAD(&ctx->list);
}
