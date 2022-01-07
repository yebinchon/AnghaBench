
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {unsigned int num_queue_groups; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,...) ;
 int pqi_create_event_queue (struct pqi_ctrl_info*) ;
 int pqi_create_queue_group (struct pqi_ctrl_info*,unsigned int) ;

__attribute__((used)) static int pqi_create_queues(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 unsigned int i;

 rc = pqi_create_event_queue(ctrl_info);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev,
   "error creating event queue\n");
  return rc;
 }

 for (i = 0; i < ctrl_info->num_queue_groups; i++) {
  rc = pqi_create_queue_group(ctrl_info, i);
  if (rc) {
   dev_err(&ctrl_info->pci_dev->dev,
    "error creating queue group number %u/%u\n",
    i, ctrl_info->num_queue_groups);
   return rc;
  }
 }

 return 0;
}
