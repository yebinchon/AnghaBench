
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {scalar_t__ bHwRfOffAction; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
typedef enum rt_rf_power_state { ____Placeholder_rt_rf_power_state } rt_rf_power_state ;
struct TYPE_2__ {int eRFPowerState; } ;


 int COMP_PS ;
 int RT_TRACE (int ,char*,int) ;
 int _rtl92e_set_rf_power_state (struct net_device*,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

bool rtl92e_set_rf_power_state(struct net_device *dev,
          enum rt_rf_power_state eRFPowerState)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 bool bResult = 0;

 RT_TRACE(COMP_PS,
   "---------> rtl92e_set_rf_power_state(): eRFPowerState(%d)\n",
   eRFPowerState);
 if (eRFPowerState == priv->rtllib->eRFPowerState &&
     priv->bHwRfOffAction == 0) {
  RT_TRACE(COMP_PS,
    "<--------- rtl92e_set_rf_power_state(): discard the request for eRFPowerState(%d) is the same.\n",
    eRFPowerState);
  return bResult;
 }

 bResult = _rtl92e_set_rf_power_state(dev, eRFPowerState);

 RT_TRACE(COMP_PS,
   "<--------- rtl92e_set_rf_power_state(): bResult(%d)\n",
   bResult);

 return bResult;
}
