
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {scalar_t__ work_queue; TYPE_1__* ccw_device; } ;
typedef int name ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int TASK_COMM_LEN ;
 int WQ_MEM_RECLAIM ;
 scalar_t__ alloc_ordered_workqueue (char*,int ) ;
 char* dev_name (int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int zfcp_setup_adapter_work_queue(struct zfcp_adapter *adapter)
{
 char name[TASK_COMM_LEN];

 snprintf(name, sizeof(name), "zfcp_q_%s",
   dev_name(&adapter->ccw_device->dev));
 adapter->work_queue = alloc_ordered_workqueue(name, WQ_MEM_RECLAIM);

 if (adapter->work_queue)
  return 0;
 return -ENOMEM;
}
