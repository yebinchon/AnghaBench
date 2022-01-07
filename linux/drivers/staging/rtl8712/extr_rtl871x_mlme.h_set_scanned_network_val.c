
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int lock; int num_of_scanned; } ;
typedef int sint ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void set_scanned_network_val(struct mlme_priv *pmlmepriv,
          sint val)
{
 unsigned long irqL;

 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 pmlmepriv->num_of_scanned = val;
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
}
