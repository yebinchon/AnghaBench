
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cancel_thread ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*) ;

void rtw_hal_stop_thread(struct adapter *padapter)
{
 if (padapter->HalFunc.cancel_thread)
  padapter->HalFunc.cancel_thread(padapter);
}
