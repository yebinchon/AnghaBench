
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct tb_hotplug_event {int unplug; int work; int port; int route; struct tb* tb; } ;
struct tb {int wq; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct tb_hotplug_event* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int tb_handle_hotplug ;

__attribute__((used)) static void tb_queue_hotplug(struct tb *tb, u64 route, u8 port, bool unplug)
{
 struct tb_hotplug_event *ev;

 ev = kmalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev)
  return;

 ev->tb = tb;
 ev->route = route;
 ev->port = port;
 ev->unplug = unplug;
 INIT_WORK(&ev->work, tb_handle_hotplug);
 queue_work(tb->wq, &ev->work);
}
