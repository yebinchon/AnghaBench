
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free_hal_data ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 scalar_t__ is_primary_adapter (struct adapter*) ;
 int rtw_hal_data_deinit (struct adapter*) ;
 int stub1 (struct adapter*) ;

void rtw_hal_free_data(struct adapter *padapter)
{

 rtw_hal_data_deinit(padapter);

 if (is_primary_adapter(padapter))
  if (padapter->HalFunc.free_hal_data)
   padapter->HalFunc.free_hal_data(padapter);
}
