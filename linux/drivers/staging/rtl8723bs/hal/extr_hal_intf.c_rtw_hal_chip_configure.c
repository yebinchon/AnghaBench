
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* intf_chip_configure ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*) ;

void rtw_hal_chip_configure(struct adapter *padapter)
{
 if (padapter->HalFunc.intf_chip_configure)
  padapter->HalFunc.intf_chip_configure(padapter);
}
