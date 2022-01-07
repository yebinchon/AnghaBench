
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workspace_manager {int free_ws; int idle_ws; int total_ws; struct btrfs_compress_op const* ops; int ws_wait; int ws_lock; } ;
struct list_head {int dummy; } ;
struct btrfs_compress_op {struct list_head* (* alloc_workspace ) (int ) ;} ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct list_head*) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int list_add (struct list_head*,int *) ;
 int pr_warn (char*) ;
 int spin_lock_init (int *) ;
 struct list_head* stub1 (int ) ;

void btrfs_init_workspace_manager(struct workspace_manager *wsm,
      const struct btrfs_compress_op *ops)
{
 struct list_head *workspace;

 wsm->ops = ops;

 INIT_LIST_HEAD(&wsm->idle_ws);
 spin_lock_init(&wsm->ws_lock);
 atomic_set(&wsm->total_ws, 0);
 init_waitqueue_head(&wsm->ws_wait);





 workspace = wsm->ops->alloc_workspace(0);
 if (IS_ERR(workspace)) {
  pr_warn(
 "BTRFS: cannot preallocate compression workspace, will try later\n");
 } else {
  atomic_set(&wsm->total_ws, 1);
  wsm->free_ws = 1;
  list_add(workspace, &wsm->idle_ws);
 }
}
