
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int terminate_xmitthread_comp; } ;
struct adapter {TYPE_1__ xmitpriv; } ;
typedef scalar_t__ s32 ;


 scalar_t__ _SUCCESS ;
 int complete (int *) ;
 int flush_signals_thread () ;
 scalar_t__ rtw_hal_xmit_thread_handler (struct adapter*) ;
 int thread_enter (char*) ;
 int thread_exit () ;

int rtw_xmit_thread(void *context)
{
 s32 err;
 struct adapter *padapter;


 err = _SUCCESS;
 padapter = context;

 thread_enter("RTW_XMIT_THREAD");

 do {
  err = rtw_hal_xmit_thread_handler(padapter);
  flush_signals_thread();
 } while (_SUCCESS == err);

 complete(&padapter->xmitpriv.terminate_xmitthread_comp);

 thread_exit();
}
