
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init_recv_priv ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;
typedef int s32 ;


 int _FAIL ;
 int stub1 (struct adapter*) ;

s32 rtw_hal_init_recv_priv(struct adapter *padapter)
{
 if (padapter->HalFunc.init_recv_priv)
  return padapter->HalFunc.init_recv_priv(padapter);

 return _FAIL;
}
