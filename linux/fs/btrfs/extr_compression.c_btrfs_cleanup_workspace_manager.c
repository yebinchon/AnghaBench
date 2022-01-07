
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct list_head* next; } ;
struct workspace_manager {int total_ws; TYPE_1__* ops; TYPE_2__ idle_ws; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {int (* free_workspace ) (struct list_head*) ;} ;


 int atomic_dec (int *) ;
 int list_del (struct list_head*) ;
 int list_empty (TYPE_2__*) ;
 int stub1 (struct list_head*) ;

void btrfs_cleanup_workspace_manager(struct workspace_manager *wsman)
{
 struct list_head *ws;

 while (!list_empty(&wsman->idle_ws)) {
  ws = wsman->idle_ws.next;
  list_del(ws);
  wsman->ops->free_workspace(ws);
  atomic_dec(&wsman->total_ws);
 }
}
