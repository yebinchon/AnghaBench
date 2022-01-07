
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 scalar_t__ atomic_read (int *) ;
 int bus_for_each_drv (int *,int *,int *,int ) ;
 int cio_work_q ;
 int css_bus_type ;
 int css_eval_scheduled ;
 int css_eval_wq ;
 int css_settle ;
 int flush_workqueue (int ) ;
 int wait_event_interruptible (int ,int) ;

int css_complete_work(void)
{
 int ret;


 ret = wait_event_interruptible(css_eval_wq,
           atomic_read(&css_eval_scheduled) == 0);
 if (ret)
  return -EINTR;
 flush_workqueue(cio_work_q);

 return bus_for_each_drv(&css_bus_type, ((void*)0), ((void*)0), css_settle);
}
