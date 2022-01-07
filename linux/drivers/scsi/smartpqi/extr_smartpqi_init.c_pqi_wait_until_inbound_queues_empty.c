
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_queue_group {scalar_t__* iq_pi_copy; int * iq_ci; } ;
struct pqi_ctrl_info {unsigned int num_queue_groups; struct pqi_queue_group* queue_groups; } ;
typedef scalar_t__ pqi_index_t ;


 int ENXIO ;
 int pqi_check_ctrl_health (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 int pqi_wait_until_queued_io_drained (struct pqi_ctrl_info*,struct pqi_queue_group*) ;
 scalar_t__ readl (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pqi_wait_until_inbound_queues_empty(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 unsigned int i;
 unsigned int path;
 struct pqi_queue_group *queue_group;
 pqi_index_t iq_pi;
 pqi_index_t iq_ci;

 for (i = 0; i < ctrl_info->num_queue_groups; i++) {
  queue_group = &ctrl_info->queue_groups[i];

  rc = pqi_wait_until_queued_io_drained(ctrl_info, queue_group);
  if (rc)
   return rc;

  for (path = 0; path < 2; path++) {
   iq_pi = queue_group->iq_pi_copy[path];

   while (1) {
    iq_ci = readl(queue_group->iq_ci[path]);
    if (iq_ci == iq_pi)
     break;
    pqi_check_ctrl_health(ctrl_info);
    if (pqi_ctrl_offline(ctrl_info))
     return -ENXIO;
    usleep_range(1000, 2000);
   }
  }
 }

 return 0;
}
