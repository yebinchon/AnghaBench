
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int lock; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int r8712_disassoc_cmd (struct _adapter*) ;
 int r8712_free_assoc_resources (struct _adapter*) ;
 int r8712_ind_disconnect (struct _adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u8 r8712_set_802_11_disassociate(struct _adapter *padapter)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if (check_fwstate(pmlmepriv, _FW_LINKED)) {
  r8712_disassoc_cmd(padapter);
  r8712_ind_disconnect(padapter);
  r8712_free_assoc_resources(padapter);
 }
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
 return 1;
}
