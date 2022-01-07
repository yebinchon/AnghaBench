
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {scalar_t__ SdioRxFIFOCnt; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int rtl8723b_init_default_value (struct adapter*) ;

__attribute__((used)) static void rtl8723bs_init_default_value(struct adapter *padapter)
{
 struct hal_com_data *pHalData;


 pHalData = GET_HAL_DATA(padapter);

 rtl8723b_init_default_value(padapter);


 pHalData->SdioRxFIFOCnt = 0;
}
