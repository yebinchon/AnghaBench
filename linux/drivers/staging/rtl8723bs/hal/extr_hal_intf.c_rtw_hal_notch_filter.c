
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* hal_notch_filter ) (struct adapter*,int) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int) ;

void rtw_hal_notch_filter(struct adapter *adapter, bool enable)
{
 if (adapter->HalFunc.hal_notch_filter)
  adapter->HalFunc.hal_notch_filter(adapter, enable);
}
