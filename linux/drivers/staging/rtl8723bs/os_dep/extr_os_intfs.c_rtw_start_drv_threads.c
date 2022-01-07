
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int terminate_cmdthread_comp; } ;
struct adapter {TYPE_1__ cmdpriv; void* cmdThread; void* xmitThread; } ;


 scalar_t__ IS_ERR (void*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 void* kthread_run (int ,struct adapter*,char*) ;
 int rtw_cmd_thread ;
 int rtw_hal_start_thread (struct adapter*) ;
 int rtw_xmit_thread ;
 int wait_for_completion (int *) ;

u32 rtw_start_drv_threads(struct adapter *padapter)
{
 u32 _status = _SUCCESS;

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));
 padapter->xmitThread = kthread_run(rtw_xmit_thread, padapter, "RTW_XMIT_THREAD");
 if (IS_ERR(padapter->xmitThread))
  _status = _FAIL;

 padapter->cmdThread = kthread_run(rtw_cmd_thread, padapter, "RTW_CMD_THREAD");
 if (IS_ERR(padapter->cmdThread))
  _status = _FAIL;
 else
  wait_for_completion(&padapter->cmdpriv.terminate_cmdthread_comp);

 rtw_hal_start_thread(padapter);
 return _status;
}
