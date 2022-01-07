
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EntryMinUndecoratedSmoothedPWDB; } ;
struct hal_com_data {TYPE_1__ dmpriv; } ;
struct adapter {int dummy; } ;
typedef int s32 ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

__attribute__((used)) static s32 halbtcoutsrc_GetWifiRssi(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);

 return pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
}
