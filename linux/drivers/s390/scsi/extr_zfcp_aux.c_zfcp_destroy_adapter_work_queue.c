
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int * work_queue; } ;


 int destroy_workqueue (int *) ;

__attribute__((used)) static void zfcp_destroy_adapter_work_queue(struct zfcp_adapter *adapter)
{
 if (adapter->work_queue)
  destroy_workqueue(adapter->work_queue);
 adapter->work_queue = ((void*)0);

}
