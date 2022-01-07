
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {scalar_t__ bSurpriseRemoved; scalar_t__ bDriverStopped; int mlmepriv; } ;
typedef int sint ;


 int RT_TRACE (int ,int ,char*) ;
 int _FW_LINKED ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int check_fwstate (int *,int ) ;

sint rtw_if_up(struct adapter *padapter)
{

 sint res;

 if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
  (check_fwstate(&padapter->mlmepriv, _FW_LINKED) == 0)) {
  RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_if_up:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
  res = 0;
 } else
  res = 1;
 return res;
}
