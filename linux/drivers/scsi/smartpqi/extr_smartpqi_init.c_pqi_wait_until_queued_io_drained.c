
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_queue_group {int * submit_lock; int * request_list; } ;
struct pqi_ctrl_info {int dummy; } ;


 int ENXIO ;
 int list_empty (int *) ;
 int pqi_check_ctrl_health (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pqi_wait_until_queued_io_drained(struct pqi_ctrl_info *ctrl_info,
 struct pqi_queue_group *queue_group)
{
 unsigned int path;
 unsigned long flags;
 bool list_is_empty;

 for (path = 0; path < 2; path++) {
  while (1) {
   spin_lock_irqsave(
    &queue_group->submit_lock[path], flags);
   list_is_empty =
    list_empty(&queue_group->request_list[path]);
   spin_unlock_irqrestore(
    &queue_group->submit_lock[path], flags);
   if (list_is_empty)
    break;
   pqi_check_ctrl_health(ctrl_info);
   if (pqi_ctrl_offline(ctrl_info))
    return -ENXIO;
   usleep_range(1000, 2000);
  }
 }

 return 0;
}
