
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bBtExist; } ;
struct hal_com_data {TYPE_1__ bt_coexist; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

bool hal_btcoex_IsBtExist(struct adapter *padapter)
{
 struct hal_com_data *pHalData;


 pHalData = GET_HAL_DATA(padapter);
 return pHalData->bt_coexist.bBtExist;
}
