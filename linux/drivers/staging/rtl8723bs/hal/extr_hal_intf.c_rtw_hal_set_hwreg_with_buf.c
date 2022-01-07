
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* SetHwRegHandlerWithBuf ) (struct adapter*,int ,int *,int) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int *,int) ;

void rtw_hal_set_hwreg_with_buf(struct adapter *padapter, u8 variable, u8 *pbuf, int len)
{
 if (padapter->HalFunc.SetHwRegHandlerWithBuf)
  padapter->HalFunc.SetHwRegHandlerWithBuf(padapter, variable, pbuf, len);
}
