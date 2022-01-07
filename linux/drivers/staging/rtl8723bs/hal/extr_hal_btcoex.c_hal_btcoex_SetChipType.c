
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int btChipType; } ;
struct hal_com_data {TYPE_1__ bt_coexist; } ;
struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_SetChipType (int ) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

void hal_btcoex_SetChipType(struct adapter *padapter, u8 chipType)
{
 struct hal_com_data *pHalData;


 pHalData = GET_HAL_DATA(padapter);
 pHalData->bt_coexist.btChipType = chipType;

 EXhalbtcoutsrc_SetChipType(chipType);
}
