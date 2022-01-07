
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POLL_INTERVAL ;
 int kthread_should_stop () ;
 int schedule_timeout_interruptible (int ) ;
 int set_freezable () ;
 int tps65090_charger_isr (int,void*) ;
 int try_to_freeze () ;

__attribute__((used)) static int tps65090_charger_poll_task(void *data)
{
 set_freezable();

 while (!kthread_should_stop()) {
  schedule_timeout_interruptible(POLL_INTERVAL);
  try_to_freeze();
  tps65090_charger_isr(-1, data);
 }
 return 0;
}
