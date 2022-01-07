
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int terminate_cmdthread_comp; } ;
struct adapter {TYPE_1__ cmdpriv; int cmdThread; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int kthread_run (int ,struct adapter*,char*) ;
 int rtw_cmd_thread ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int rtw_start_drv_threads(struct adapter *padapter)
{
 int err = 0;

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));

 padapter->cmdThread = kthread_run(rtw_cmd_thread, padapter,
       "RTW_CMD_THREAD");
 if (IS_ERR(padapter->cmdThread))
  err = PTR_ERR(padapter->cmdThread);
 else

  wait_for_completion_interruptible(&padapter->cmdpriv.terminate_cmdthread_comp);

 return err;
}
