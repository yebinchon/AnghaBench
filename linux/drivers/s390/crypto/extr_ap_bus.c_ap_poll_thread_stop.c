
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ap_poll_kthread ;
 int ap_poll_thread_mutex ;
 int kthread_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ap_poll_thread_stop(void)
{
 if (!ap_poll_kthread)
  return;
 mutex_lock(&ap_poll_thread_mutex);
 kthread_stop(ap_poll_kthread);
 ap_poll_kthread = ((void*)0);
 mutex_unlock(&ap_poll_thread_mutex);
}
