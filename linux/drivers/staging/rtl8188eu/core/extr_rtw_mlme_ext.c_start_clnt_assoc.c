
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_info {int state; } ;
struct mlme_ext_priv {int link_timer; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int REASSOC_TO ;
 int WIFI_FW_ASSOC_STATE ;
 int WIFI_FW_AUTH_NULL ;
 int WIFI_FW_AUTH_STATE ;
 int WIFI_FW_AUTH_SUCCESS ;
 int del_timer_sync (int *) ;
 int issue_assocreq (struct adapter*) ;
 int set_link_timer (struct mlme_ext_priv*,int ) ;

__attribute__((used)) static void start_clnt_assoc(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 del_timer_sync(&pmlmeext->link_timer);

 pmlmeinfo->state &= (~(WIFI_FW_AUTH_NULL | WIFI_FW_AUTH_STATE));
 pmlmeinfo->state |= (WIFI_FW_AUTH_SUCCESS | WIFI_FW_ASSOC_STATE);

 issue_assocreq(padapter);

 set_link_timer(pmlmeext, REASSOC_TO);
}
