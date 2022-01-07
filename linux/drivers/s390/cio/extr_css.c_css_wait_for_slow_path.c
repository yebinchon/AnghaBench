
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cio_work_q ;
 int flush_workqueue (int ) ;

void css_wait_for_slow_path(void)
{
 flush_workqueue(cio_work_q);
}
