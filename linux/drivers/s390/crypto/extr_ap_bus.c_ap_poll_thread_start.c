
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTR_ERR_OR_ZERO (int *) ;
 int * ap_poll_kthread ;
 int ap_poll_thread ;
 int ap_poll_thread_mutex ;
 scalar_t__ ap_using_interrupts () ;
 int * kthread_run (int ,int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ap_poll_thread_start(void)
{
 int rc;

 if (ap_using_interrupts() || ap_poll_kthread)
  return 0;
 mutex_lock(&ap_poll_thread_mutex);
 ap_poll_kthread = kthread_run(ap_poll_thread, ((void*)0), "appoll");
 rc = PTR_ERR_OR_ZERO(ap_poll_kthread);
 if (rc)
  ap_poll_kthread = ((void*)0);
 mutex_unlock(&ap_poll_thread_mutex);
 return rc;
}
