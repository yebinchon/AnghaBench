
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int work_wait_q; } ;


 int BUG_ON (int) ;
 int MIN_NICE ;
 int current ;
 int ibmvscsi_do_work (struct ibmvscsi_host_data*) ;
 int ibmvscsi_work_to_do (struct ibmvscsi_host_data*) ;
 scalar_t__ kthread_should_stop () ;
 int set_user_nice (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int ibmvscsi_work(void *data)
{
 struct ibmvscsi_host_data *hostdata = data;
 int rc;

 set_user_nice(current, MIN_NICE);

 while (1) {
  rc = wait_event_interruptible(hostdata->work_wait_q,
           ibmvscsi_work_to_do(hostdata));

  BUG_ON(rc);

  if (kthread_should_stop())
   break;

  ibmvscsi_do_work(hostdata);
 }

 return 0;
}
