
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int terminate_xmitthread_comp; int xmit_comp; } ;
struct adapter {TYPE_1__ xmitpriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int complete (int *) ;
 int rtw_hal_stop_thread (struct adapter*) ;
 int rtw_stop_cmd_thread (struct adapter*) ;
 int wait_for_completion (int *) ;

void rtw_stop_drv_threads (struct adapter *padapter)
{
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));

 rtw_stop_cmd_thread(padapter);


 complete(&padapter->xmitpriv.xmit_comp);
 wait_for_completion(&padapter->xmitpriv.terminate_xmitthread_comp);
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("\n drv_halt: rtw_xmit_thread can be terminated !\n"));

 rtw_hal_stop_thread(padapter);
}
