
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int to_join; int lock; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int _FW_UNDER_SURVEY ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_scan_timeout_handler (struct _adapter *adapter)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 pmlmepriv->to_join = 0;
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
}
