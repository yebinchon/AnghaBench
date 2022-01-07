
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlme_priv {int to_join; int lock; } ;
struct TYPE_4__ {scalar_t__ power_mgnt; int smart_ps; } ;
struct TYPE_3__ {scalar_t__ pwr_mode; } ;
struct _adapter {TYPE_2__ registrypriv; TYPE_1__ pwrctrlpriv; scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct mlme_priv mlmepriv; } ;


 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int r8712_os_indicate_disconnect (struct _adapter*) ;
 int r8712_set_ps_mode (struct _adapter*,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void _r8712_join_timeout_handler(struct _adapter *adapter)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

 if (adapter->driver_stopped || adapter->surprise_removed)
  return;
 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 pmlmepriv->to_join = 0;
 if (check_fwstate(pmlmepriv, _FW_LINKED)) {
  r8712_os_indicate_disconnect(adapter);
  _clr_fwstate_(pmlmepriv, _FW_LINKED);
 }
 if (adapter->pwrctrlpriv.pwr_mode != adapter->registrypriv.power_mgnt) {
  r8712_set_ps_mode(adapter, adapter->registrypriv.power_mgnt,
      adapter->registrypriv.smart_ps);
 }
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
}
