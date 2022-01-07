
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xmit_frame {int dummy; } ;
struct TYPE_2__ {int (* hal_xmit ) (struct adapter*,struct xmit_frame*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;
typedef int s32 ;


 int stub1 (struct adapter*,struct xmit_frame*) ;

s32 rtw_hal_xmit(struct adapter *padapter, struct xmit_frame *pxmitframe)
{
 if (padapter->HalFunc.hal_xmit)
  return padapter->HalFunc.hal_xmit(padapter, pxmitframe);

 return 0;
}
