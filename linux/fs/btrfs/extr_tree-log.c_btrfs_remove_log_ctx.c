
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int log_mutex; } ;
struct btrfs_log_ctx {int list; } ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void btrfs_remove_log_ctx(struct btrfs_root *root,
     struct btrfs_log_ctx *ctx)
{
 if (!ctx)
  return;

 mutex_lock(&root->log_mutex);
 list_del_init(&ctx->list);
 mutex_unlock(&root->log_mutex);
}
