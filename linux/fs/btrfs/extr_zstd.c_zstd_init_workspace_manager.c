
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int * idle_ws; int active_map; int lru_list; int timer; int wait; int lock; int * ops; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct list_head*) ;
 int ZSTD_BTRFS_MAX_LEVEL ;
 int btrfs_zstd_compress ;
 int init_waitqueue_head (int *) ;
 int list_add (struct list_head*,int *) ;
 int pr_warn (char*) ;
 int set_bit (int,int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 TYPE_1__ wsm ;
 struct list_head* zstd_alloc_workspace (int) ;
 int zstd_calc_ws_mem_sizes () ;
 int zstd_reclaim_timer_fn ;

__attribute__((used)) static void zstd_init_workspace_manager(void)
{
 struct list_head *ws;
 int i;

 zstd_calc_ws_mem_sizes();

 wsm.ops = &btrfs_zstd_compress;
 spin_lock_init(&wsm.lock);
 init_waitqueue_head(&wsm.wait);
 timer_setup(&wsm.timer, zstd_reclaim_timer_fn, 0);

 INIT_LIST_HEAD(&wsm.lru_list);
 for (i = 0; i < ZSTD_BTRFS_MAX_LEVEL; i++)
  INIT_LIST_HEAD(&wsm.idle_ws[i]);

 ws = zstd_alloc_workspace(ZSTD_BTRFS_MAX_LEVEL);
 if (IS_ERR(ws)) {
  pr_warn(
  "BTRFS: cannot preallocate zstd compression workspace\n");
 } else {
  set_bit(ZSTD_BTRFS_MAX_LEVEL - 1, &wsm.active_map);
  list_add(ws, &wsm.idle_ws[ZSTD_BTRFS_MAX_LEVEL - 1]);
 }
}
