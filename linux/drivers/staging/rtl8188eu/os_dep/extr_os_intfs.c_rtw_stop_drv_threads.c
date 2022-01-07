
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int terminate_cmdthread_comp; int cmd_queue_comp; } ;
struct adapter {TYPE_1__ cmdpriv; scalar_t__ cmdThread; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int complete (int *) ;
 int wait_for_completion_interruptible (int *) ;

void rtw_stop_drv_threads(struct adapter *padapter)
{
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));


 complete(&padapter->cmdpriv.cmd_queue_comp);
 if (padapter->cmdThread)
  wait_for_completion_interruptible(&padapter->cmdpriv.terminate_cmdthread_comp);
}
