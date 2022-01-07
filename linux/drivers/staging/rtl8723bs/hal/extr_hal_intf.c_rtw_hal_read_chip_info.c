
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read_adapter_info ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*) ;

void rtw_hal_read_chip_info(struct adapter *padapter)
{
 if (padapter->HalFunc.read_adapter_info)
  padapter->HalFunc.read_adapter_info(padapter);
}
