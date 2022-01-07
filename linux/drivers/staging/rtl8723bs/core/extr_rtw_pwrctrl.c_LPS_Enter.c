
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pwrctrl_priv {int LpsIdleCount; scalar_t__ pwr_mode; int bpower_saving; int power_mgnt; scalar_t__ bLeisurePs; } ;
struct dvobj_priv {TYPE_2__* padapters; } ;
struct TYPE_3__ {int smart_ps; } ;
struct adapter {TYPE_1__ registrypriv; } ;
struct TYPE_4__ {int mlmepriv; } ;


 scalar_t__ IFACE_PORT0 ;
 scalar_t__ PS_MODE_ACTIVE ;
 int PS_RDY_CHECK (TYPE_2__*) ;
 int WIFI_ASOC_STATE ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 scalar_t__ check_fwstate (int *,int ) ;
 struct pwrctrl_priv* dvobj_to_pwrctl (struct dvobj_priv*) ;
 scalar_t__ get_iface_type (struct adapter*) ;
 scalar_t__ hal_btcoex_IsBtControlLps (struct adapter*) ;
 int rtw_set_ps_mode (struct adapter*,int ,int ,int ,char*) ;
 int sprintf (char*,char*,char const*) ;

void LPS_Enter(struct adapter *padapter, const char *msg)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(padapter);
 struct pwrctrl_priv *pwrpriv = dvobj_to_pwrctl(dvobj);
 int n_assoc_iface = 0;
 char buf[32] = {0};

 if (hal_btcoex_IsBtControlLps(padapter))
  return;


 if (check_fwstate(&(dvobj->padapters->mlmepriv), WIFI_ASOC_STATE))
  n_assoc_iface++;
 if (n_assoc_iface != 1)
  return;


 if (get_iface_type(padapter) != IFACE_PORT0)
  return;

 if (!PS_RDY_CHECK(dvobj->padapters))
  return;

 if (pwrpriv->bLeisurePs) {

  if (pwrpriv->LpsIdleCount >= 2) {
   if (pwrpriv->pwr_mode == PS_MODE_ACTIVE) {
    sprintf(buf, "WIFI-%s", msg);
    pwrpriv->bpower_saving = 1;
    rtw_set_ps_mode(padapter, pwrpriv->power_mgnt, padapter->registrypriv.smart_ps, 0, buf);
   }
  } else
   pwrpriv->LpsIdleCount++;
 }


}
