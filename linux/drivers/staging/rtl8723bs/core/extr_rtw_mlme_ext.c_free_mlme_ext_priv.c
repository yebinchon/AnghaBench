
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_priv {int link_timer; int survey_timer; struct adapter* padapter; } ;
struct adapter {scalar_t__ bDriverStopped; } ;


 int del_timer_sync (int *) ;

void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
{
 struct adapter *padapter = pmlmeext->padapter;

 if (!padapter)
  return;

 if (padapter->bDriverStopped) {
  del_timer_sync(&pmlmeext->survey_timer);
  del_timer_sync(&pmlmeext->link_timer);

 }
}
