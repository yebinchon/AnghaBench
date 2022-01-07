
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* c2h_handler ) (struct adapter*,int *) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;
typedef int s32 ;


 int _FAIL ;
 int stub1 (struct adapter*,int *) ;

s32 rtw_hal_c2h_handler(struct adapter *adapter, u8 *c2h_evt)
{
 s32 ret = _FAIL;
 if (adapter->HalFunc.c2h_handler)
  ret = adapter->HalFunc.c2h_handler(adapter, c2h_evt);
 return ret;
}
