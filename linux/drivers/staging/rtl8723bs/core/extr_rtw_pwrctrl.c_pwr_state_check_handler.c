
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pwrctrl_priv {struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 struct pwrctrl_priv* from_timer (int ,struct timer_list*,int ) ;
 int pwr_state_check_timer ;
 struct pwrctrl_priv* pwrctrlpriv ;
 int rtw_ps_cmd (struct adapter*) ;

__attribute__((used)) static void pwr_state_check_handler(struct timer_list *t)
{
 struct pwrctrl_priv *pwrctrlpriv =
  from_timer(pwrctrlpriv, t, pwr_state_check_timer);
 struct adapter *padapter = pwrctrlpriv->adapter;

 rtw_ps_cmd(padapter);
}
