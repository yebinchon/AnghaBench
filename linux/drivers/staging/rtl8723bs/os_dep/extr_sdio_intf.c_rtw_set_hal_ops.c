
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int rtl8723bs_set_hal_ops (struct adapter*) ;
 int rtw_hal_data_init (struct adapter*) ;

void rtw_set_hal_ops(struct adapter *padapter)
{

 rtw_hal_data_init(padapter);

 rtl8723bs_set_hal_ops(padapter);
}
