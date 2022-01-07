
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sitesurvey_ctrl_timer; } ;
struct mlme_priv {int wdg_timer; int dhcp_timer; int scan_to_timer; TYPE_1__ sitesurveyctrl; int assoc_timer; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int _scan_timeout_handler ;
 int dhcp_timeout_handler ;
 int join_timeout_handler ;
 int sitesurvey_ctrl_handler ;
 int timer_setup (int *,int ,int ) ;
 int wdg_timeout_handler ;

void r8712_init_mlme_timer(struct _adapter *adapter)
{
 struct mlme_priv *mlmepriv = &adapter->mlmepriv;

 timer_setup(&mlmepriv->assoc_timer, join_timeout_handler, 0);
 timer_setup(&mlmepriv->sitesurveyctrl.sitesurvey_ctrl_timer,
      sitesurvey_ctrl_handler, 0);
 timer_setup(&mlmepriv->scan_to_timer, _scan_timeout_handler, 0);
 timer_setup(&mlmepriv->dhcp_timer, dhcp_timeout_handler, 0);
 timer_setup(&mlmepriv->wdg_timer, wdg_timeout_handler, 0);
}
