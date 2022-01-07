
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int AntDetection; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

void rtw_init_hal_com_default_value(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 pHalData->AntDetection = 1;
}
