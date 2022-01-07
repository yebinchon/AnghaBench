
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MacAddress; } ;
struct mlme_ext_info {int auth_seq; TYPE_1__ network; scalar_t__ link_count; scalar_t__ reassoc_count; scalar_t__ reauth_count; int state; } ;
struct mlme_ext_priv {scalar_t__ retry; int link_timer; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int DBG_88E_LEVEL (int ,char*) ;
 int REAUTH_TO ;
 int WIFI_FW_AUTH_NULL ;
 int WIFI_FW_AUTH_STATE ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int _drv_info_ ;
 int del_timer_sync (int *) ;
 int issue_auth (struct adapter*,int *,int ) ;
 int issue_deauth (struct adapter*,int ,int ) ;
 int set_link_timer (struct mlme_ext_priv*,int ) ;

__attribute__((used)) static void start_clnt_auth(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 del_timer_sync(&pmlmeext->link_timer);

 pmlmeinfo->state &= (~WIFI_FW_AUTH_NULL);
 pmlmeinfo->state |= WIFI_FW_AUTH_STATE;

 pmlmeinfo->auth_seq = 1;
 pmlmeinfo->reauth_count = 0;
 pmlmeinfo->reassoc_count = 0;
 pmlmeinfo->link_count = 0;
 pmlmeext->retry = 0;






 issue_deauth(padapter, (&pmlmeinfo->network)->MacAddress, WLAN_REASON_DEAUTH_LEAVING);

 DBG_88E_LEVEL(_drv_info_, "start auth\n");
 issue_auth(padapter, ((void*)0), 0);

 set_link_timer(pmlmeext, REAUTH_TO);
}
