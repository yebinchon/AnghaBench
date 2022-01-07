
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stop_req; int terminate_cmdthread_comp; int cmd_queue_comp; int cmdthd_running; } ;
struct adapter {TYPE_1__ cmdpriv; scalar_t__ cmdThread; } ;


 int atomic_read (int *) ;
 int complete (int *) ;
 int wait_for_completion (int *) ;

void rtw_stop_cmd_thread(struct adapter *adapter)
{
 if (adapter->cmdThread &&
  atomic_read(&(adapter->cmdpriv.cmdthd_running)) == 1 &&
  adapter->cmdpriv.stop_req == 0) {
  adapter->cmdpriv.stop_req = 1;
  complete(&adapter->cmdpriv.cmd_queue_comp);
  wait_for_completion(&adapter->cmdpriv.terminate_cmdthread_comp);
 }
}
