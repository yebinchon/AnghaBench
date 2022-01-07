
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwrctrl_priv {scalar_t__ pwr_mode; int lock; } ;
struct adapter {int hw_init_completed; scalar_t__ bSurpriseRemoved; } ;


 int DBG_871X (char*) ;
 scalar_t__ PS_MODE_ACTIVE ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int cond_resched () ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void LPS_Leave_check(
 struct adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv;
 unsigned long start_time;
 u8 bReady;

 pwrpriv = adapter_to_pwrctl(padapter);

 bReady = 0;
 start_time = jiffies;

 cond_resched();

 while (1) {
  mutex_lock(&pwrpriv->lock);

  if (padapter->bSurpriseRemoved
   || !(padapter->hw_init_completed)
   || (pwrpriv->pwr_mode == PS_MODE_ACTIVE))
   bReady = 1;

  mutex_unlock(&pwrpriv->lock);

  if (bReady)
   break;

  if (jiffies_to_msecs(jiffies - start_time) > 100) {
   DBG_871X("Wait for cpwm event  than 100 ms!!!\n");
   break;
  }
  msleep(1);
 }
}
