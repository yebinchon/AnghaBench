
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int lock; } ;
struct cmd_obj {scalar_t__ res; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 scalar_t__ H2C_SUCCESS ;
 int _FW_LINKED ;
 int r8712_free_cmd_obj (struct cmd_obj*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_disassoc_cmd_callback(struct _adapter *padapter,
     struct cmd_obj *pcmd)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 if (pcmd->res != H2C_SUCCESS) {
  spin_lock_irqsave(&pmlmepriv->lock, irqL);
  set_fwstate(pmlmepriv, _FW_LINKED);
  spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
  return;
 }
 r8712_free_cmd_obj(pcmd);
}
