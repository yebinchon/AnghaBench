
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int btTotalAntNum; } ;
struct hal_com_data {TYPE_1__ bt_coexist; } ;
struct adapter {int dummy; } ;


 int BT_COEX_ANT_TYPE_PG ;
 int EXhalbtcoutsrc_SetAntNum (int ,int ) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

void hal_btcoex_SetPgAntNum(struct adapter *padapter, u8 antNum)
{
 struct hal_com_data *pHalData;


 pHalData = GET_HAL_DATA(padapter);

 pHalData->bt_coexist.btTotalAntNum = antNum;
 EXhalbtcoutsrc_SetAntNum(BT_COEX_ANT_TYPE_PG, antNum);
}
