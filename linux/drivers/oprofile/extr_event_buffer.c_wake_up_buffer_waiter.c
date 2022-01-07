
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int) ;
 int buffer_mutex ;
 int buffer_ready ;
 int buffer_wait ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

void wake_up_buffer_waiter(void)
{
 mutex_lock(&buffer_mutex);
 atomic_set(&buffer_ready, 1);
 wake_up(&buffer_wait);
 mutex_unlock(&buffer_mutex);
}
