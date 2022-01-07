
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int set_scan_deny_timer; int dynamic_chk_timer; int scan_to_timer; int assoc_timer; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int _dynamic_check_timer_handler ;
 int _rtw_join_timeout_handler ;
 int _rtw_set_scan_deny_timer_hdl ;
 int rtw_scan_timeout_handler ;
 int timer_setup (int *,int ,int ) ;

void rtw_init_mlme_timer(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 timer_setup(&pmlmepriv->assoc_timer, _rtw_join_timeout_handler, 0);
 timer_setup(&pmlmepriv->scan_to_timer, rtw_scan_timeout_handler, 0);
 timer_setup(&pmlmepriv->dynamic_chk_timer,
      _dynamic_check_timer_handler, 0);
 timer_setup(&pmlmepriv->set_scan_deny_timer,
      _rtw_set_scan_deny_timer_hdl, 0);
}
