
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int RSSI_B; int RSSI_A; int RxRate; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__ DM_ODM_T ;


 int DBG_871X_SEL_NL (void*,char*,int ,int ,int ) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HDATA_RATE (int ) ;

void rtw_odm_get_perpkt_rssi(void *sel, struct adapter *adapter)
{
 struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
 DM_ODM_T *odm = &hal_data->odmpriv;

 DBG_871X_SEL_NL(sel, "RxRate = %s, RSSI_A = %d(%%), RSSI_B = %d(%%)\n",
   HDATA_RATE(odm->RxRate), odm->RSSI_A, odm->RSSI_B);
}
