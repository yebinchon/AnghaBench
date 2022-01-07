
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_priv {int sa_query_timer; int link_timer; int survey_timer; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int link_timer_hdl ;
 int sa_query_timer_hdl ;
 int survey_timer_hdl ;
 int timer_setup (int *,int ,int ) ;

void init_mlme_ext_timer(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 timer_setup(&pmlmeext->survey_timer, survey_timer_hdl, 0);
 timer_setup(&pmlmeext->link_timer, link_timer_hdl, 0);
 timer_setup(&pmlmeext->sa_query_timer, sa_query_timer_hdl, 0);
}
