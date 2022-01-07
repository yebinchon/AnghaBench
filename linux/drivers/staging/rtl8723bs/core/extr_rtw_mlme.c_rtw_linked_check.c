
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asoc_sta_count; } ;
struct adapter {int mlmepriv; TYPE_1__ stapriv; } ;
typedef int sint ;


 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int _FW_LINKED ;
 int check_fwstate (int *,int) ;

sint rtw_linked_check(struct adapter *padapter)
{
 if ((check_fwstate(&padapter->mlmepriv, WIFI_AP_STATE) == 1) ||
   (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE) == 1)) {
  if (padapter->stapriv.asoc_sta_count > 2)
   return 1;
 } else {
  if (check_fwstate(&padapter->mlmepriv, _FW_LINKED) == 1)
   return 1;
 }
 return 0;
}
