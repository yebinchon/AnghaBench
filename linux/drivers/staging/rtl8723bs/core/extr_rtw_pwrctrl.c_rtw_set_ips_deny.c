
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwrctrl_priv {scalar_t__ ips_deny_time; } ;
struct adapter {int dummy; } ;


 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;

inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
{
 struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 pwrpriv->ips_deny_time = jiffies + msecs_to_jiffies(ms);
}
