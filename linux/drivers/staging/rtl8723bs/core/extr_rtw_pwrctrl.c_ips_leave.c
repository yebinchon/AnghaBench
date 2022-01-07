
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {int lock; } ;
struct adapter {int dummy; } ;


 int IPS_NONE ;
 int _SUCCESS ;
 int _ips_leave (struct adapter*) ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int hal_btcoex_IpsNotify (struct adapter*,int ) ;
 int is_primary_adapter (struct adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ips_leave(struct adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 int ret;

 if (!is_primary_adapter(padapter))
  return _SUCCESS;

 mutex_lock(&pwrpriv->lock);
 ret = _ips_leave(padapter);
 mutex_unlock(&pwrpriv->lock);

 if (_SUCCESS == ret)
  hal_btcoex_IpsNotify(padapter, IPS_NONE);

 return ret;
}
