
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stop ) () ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ oprofile_ops ;
 scalar_t__ oprofile_started ;
 int start_mutex ;
 int stop_switch_worker () ;
 int stub1 () ;
 int wake_up_buffer_waiter () ;

void oprofile_stop(void)
{
 mutex_lock(&start_mutex);
 if (!oprofile_started)
  goto out;
 oprofile_ops.stop();
 oprofile_started = 0;

 stop_switch_worker();


 wake_up_buffer_waiter();
out:
 mutex_unlock(&start_mutex);
}
