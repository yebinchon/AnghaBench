
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct mlme_ext_info {int state; scalar_t__ reauth_count; int auth_seq; scalar_t__ reassoc_count; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_2__ {int link_timer; } ;


 int DBG_871X (char*) ;
 scalar_t__ REASSOC_LIMIT ;
 int REASSOC_TO ;
 scalar_t__ REAUTH_LIMIT ;
 int REAUTH_TO ;
 int WIFI_FW_ASSOC_STATE ;
 int WIFI_FW_AUTH_NULL ;
 int WIFI_FW_AUTH_STATE ;
 void* WIFI_FW_NULL_STATE ;
 struct adapter* from_timer (int ,struct timer_list*,int ) ;
 int issue_assocreq (struct adapter*) ;
 int issue_auth (struct adapter*,int *,int ) ;
 TYPE_1__ mlmeextpriv ;
 struct adapter* padapter ;
 int report_join_res (struct adapter*,int) ;
 int set_link_timer (struct mlme_ext_priv*,int ) ;

void link_timer_hdl(struct timer_list *t)
{
 struct adapter *padapter =
  from_timer(padapter, t, mlmeextpriv.link_timer);



 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);



 if (pmlmeinfo->state & WIFI_FW_AUTH_NULL) {
  DBG_871X("link_timer_hdl:no beacon while connecting\n");
  pmlmeinfo->state = WIFI_FW_NULL_STATE;
  report_join_res(padapter, -3);
 } else if (pmlmeinfo->state & WIFI_FW_AUTH_STATE) {

  if (++pmlmeinfo->reauth_count > REAUTH_LIMIT) {


    pmlmeinfo->state = 0;
    report_join_res(padapter, -1);
    return;






  }

  DBG_871X("link_timer_hdl: auth timeout and try again\n");
  pmlmeinfo->auth_seq = 1;
  issue_auth(padapter, ((void*)0), 0);
  set_link_timer(pmlmeext, REAUTH_TO);
 } else if (pmlmeinfo->state & WIFI_FW_ASSOC_STATE) {

  if (++pmlmeinfo->reassoc_count > REASSOC_LIMIT) {
   pmlmeinfo->state = WIFI_FW_NULL_STATE;
   report_join_res(padapter, -2);
   return;
  }

  DBG_871X("link_timer_hdl: assoc timeout and try again\n");
  issue_assocreq(padapter);
  set_link_timer(pmlmeext, REASSOC_TO);
 }

 return;
}
