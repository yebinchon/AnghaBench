
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* SetHwRegHandler ) (struct adapter*,int ,int *) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int *) ;

void rtw_hal_set_hwreg(struct adapter *padapter, u8 variable, u8 *val)
{
 if (padapter->HalFunc.SetHwRegHandler)
  padapter->HalFunc.SetHwRegHandler(padapter, variable, val);
}
