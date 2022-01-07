
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int lock; int fw_state; } ;
typedef int sint ;


 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void clr_fwstate(struct mlme_priv *pmlmepriv, sint state)
{
 unsigned long irqL;

 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if (check_fwstate(pmlmepriv, state))
  pmlmepriv->fw_state ^= state;
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
}
