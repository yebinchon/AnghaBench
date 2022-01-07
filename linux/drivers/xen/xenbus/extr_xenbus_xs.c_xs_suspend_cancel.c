
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int up_write (int *) ;
 int xs_response_mutex ;
 int xs_suspend_exit () ;
 int xs_watch_rwsem ;

void xs_suspend_cancel(void)
{
 mutex_unlock(&xs_response_mutex);
 up_write(&xs_watch_rwsem);

 xs_suspend_exit();
}
