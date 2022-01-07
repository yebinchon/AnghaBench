
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int DBG_871X (char*) ;
 int ips_netdrv_open (struct adapter*) ;

int rtw_ips_pwr_up(struct adapter *padapter)
{
 int result;
 DBG_871X("===>  rtw_ips_pwr_up..............\n");

 result = ips_netdrv_open(padapter);

 DBG_871X("<===  rtw_ips_pwr_up..............\n");
 return result;
}
