
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int down_write (int *) ;
 int mutex_lock (int *) ;
 int xs_response_mutex ;
 int xs_suspend_enter () ;
 int xs_watch_rwsem ;

void xs_suspend(void)
{
 xs_suspend_enter();

 down_write(&xs_watch_rwsem);
 mutex_lock(&xs_response_mutex);
}
