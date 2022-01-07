
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hal_com_data {scalar_t__ LastHMEBoxNum; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int bFwCurrentInPSMode; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int REG_HMETFR ;
 TYPE_1__* adapter_to_pwrctl (struct adapter*) ;
 int rtw_write8 (struct adapter*,int ,int) ;

void rtl8723b_InitializeFirmwareVars(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);


 adapter_to_pwrctl(padapter)->bFwCurrentInPSMode = 0;


 rtw_write8(padapter, REG_HMETFR, 0x0f);


 pHalData->LastHMEBoxNum = 0;



}
