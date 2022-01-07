
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int work_wait_q; } ;


 int BUG_ON (int) ;
 int MIN_NICE ;
 int current ;
 int ibmvfc_dbg (struct ibmvfc_host*,char*) ;
 int ibmvfc_do_work (struct ibmvfc_host*) ;
 int ibmvfc_work_to_do (struct ibmvfc_host*) ;
 scalar_t__ kthread_should_stop () ;
 int set_user_nice (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int ibmvfc_work(void *data)
{
 struct ibmvfc_host *vhost = data;
 int rc;

 set_user_nice(current, MIN_NICE);

 while (1) {
  rc = wait_event_interruptible(vhost->work_wait_q,
           ibmvfc_work_to_do(vhost));

  BUG_ON(rc);

  if (kthread_should_stop())
   break;

  ibmvfc_do_work(vhost);
 }

 ibmvfc_dbg(vhost, "ibmvfc kthread exiting...\n");
 return 0;
}
