
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_np {int dummy; } ;


 int SIGINT ;
 int __iscsi_target_login_thread (struct iscsi_np*) ;
 int allow_signal (int ) ;
 int kthread_should_stop () ;
 int msleep (int) ;

int iscsi_target_login_thread(void *arg)
{
 struct iscsi_np *np = arg;
 int ret;

 allow_signal(SIGINT);

 while (1) {
  ret = __iscsi_target_login_thread(np);




  if (ret != 1)
   break;
 }

 while (!kthread_should_stop()) {
  msleep(100);
 }

 return 0;
}
