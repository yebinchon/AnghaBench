
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init_default_value ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 scalar_t__ is_primary_adapter (struct adapter*) ;
 int stub1 (struct adapter*) ;

void rtw_hal_def_value_init(struct adapter *padapter)
{
 if (is_primary_adapter(padapter))
  if (padapter->HalFunc.init_default_value)
   padapter->HalFunc.init_default_value(padapter);
}
