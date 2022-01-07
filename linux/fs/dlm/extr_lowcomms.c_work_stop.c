
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (scalar_t__) ;
 scalar_t__ recv_workqueue ;
 scalar_t__ send_workqueue ;

__attribute__((used)) static void work_stop(void)
{
 if (recv_workqueue)
  destroy_workqueue(recv_workqueue);
 if (send_workqueue)
  destroy_workqueue(send_workqueue);
}
