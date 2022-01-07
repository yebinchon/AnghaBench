
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int bCardDisableWOHSM; int net_closed; } ;


 int DBG_871X (char*) ;
 int rtw_ips_dev_unload (struct adapter*) ;

void rtw_ips_pwr_down(struct adapter *padapter)
{
 DBG_871X("===> rtw_ips_pwr_down...................\n");

 padapter->bCardDisableWOHSM = 1;
 padapter->net_closed = 1;

 rtw_ips_dev_unload(padapter);
 padapter->bCardDisableWOHSM = 0;
 DBG_871X("<=== rtw_ips_pwr_down.....................\n");
}
