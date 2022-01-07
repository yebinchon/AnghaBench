
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlme_priv {int dhcp_timer; } ;
struct TYPE_6__ {scalar_t__ power_mgnt; int smart_ps; } ;
struct TYPE_5__ {scalar_t__ pwr_mode; } ;
struct TYPE_4__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct _adapter {TYPE_3__ registrypriv; TYPE_2__ pwrctrlpriv; TYPE_1__ ledpriv; struct mlme_priv mlmepriv; } ;


 int LED_CTL_NO_LINK ;
 int _FW_LINKED ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 int r8712_os_indicate_disconnect (struct _adapter*) ;
 int r8712_set_ps_mode (struct _adapter*,scalar_t__,int ) ;
 int stub1 (struct _adapter*,int ) ;

void r8712_ind_disconnect(struct _adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 if (check_fwstate(pmlmepriv, _FW_LINKED)) {
  _clr_fwstate_(pmlmepriv, _FW_LINKED);
  padapter->ledpriv.LedControlHandler(padapter, LED_CTL_NO_LINK);
  r8712_os_indicate_disconnect(padapter);
 }
 if (padapter->pwrctrlpriv.pwr_mode !=
     padapter->registrypriv.power_mgnt) {
  del_timer(&pmlmepriv->dhcp_timer);
  r8712_set_ps_mode(padapter, padapter->registrypriv.power_mgnt,
      padapter->registrypriv.smart_ps);
 }
}
