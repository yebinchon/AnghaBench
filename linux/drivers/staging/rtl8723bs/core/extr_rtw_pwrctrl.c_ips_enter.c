
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {int lock; int ips_mode_req; } ;
struct adapter {int dummy; } ;


 int _ips_enter (struct adapter*) ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int hal_btcoex_IpsNotify (struct adapter*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ips_enter(struct adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);


 hal_btcoex_IpsNotify(padapter, pwrpriv->ips_mode_req);

 mutex_lock(&pwrpriv->lock);
 _ips_enter(padapter);
 mutex_unlock(&pwrpriv->lock);
}
