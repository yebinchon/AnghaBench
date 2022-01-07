
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workspace {int req_level; int level; int list; int lru_list; scalar_t__ last_used; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int wait; int lock; int * idle_ws; int active_map; int timer; int lru_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int ZSTD_BTRFS_MAX_LEVEL ;
 scalar_t__ ZSTD_BTRFS_RECLAIM_JIFFIES ;
 int cond_wake_up (int *) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 struct workspace* list_to_workspace (struct list_head*) ;
 int mod_timer (int *,scalar_t__) ;
 int set_bit (int,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_pending (int *) ;
 TYPE_1__ wsm ;

__attribute__((used)) static void zstd_put_workspace(struct list_head *ws)
{
 struct workspace *workspace = list_to_workspace(ws);

 spin_lock_bh(&wsm.lock);


 if (workspace->req_level == workspace->level) {

  if (list_empty(&wsm.idle_ws[ZSTD_BTRFS_MAX_LEVEL - 1])) {
   INIT_LIST_HEAD(&workspace->lru_list);
  } else {
   workspace->last_used = jiffies;
   list_add(&workspace->lru_list, &wsm.lru_list);
   if (!timer_pending(&wsm.timer))
    mod_timer(&wsm.timer,
       jiffies + ZSTD_BTRFS_RECLAIM_JIFFIES);
  }
 }

 set_bit(workspace->level - 1, &wsm.active_map);
 list_add(&workspace->list, &wsm.idle_ws[workspace->level - 1]);
 workspace->req_level = 0;

 spin_unlock_bh(&wsm.lock);

 if (workspace->level == ZSTD_BTRFS_MAX_LEVEL)
  cond_wake_up(&wsm.wait);
}
