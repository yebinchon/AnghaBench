
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c2h_id_filter_ccx; } ;
struct adapter {TYPE_1__ HalFunc; } ;
typedef int c2h_id_filter ;



c2h_id_filter rtw_hal_c2h_id_filter_ccx(struct adapter *adapter)
{
 return adapter->HalFunc.c2h_id_filter_ccx;
}
