
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int bss_loss_lock; } ;


 int __cw1200_cqm_bssloss_sm (struct cw1200_common*,int,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void cw1200_cqm_bssloss_sm(struct cw1200_common *priv,
      int init, int good, int bad)
{
 spin_lock(&priv->bss_loss_lock);
 __cw1200_cqm_bssloss_sm(priv, init, good, bad);
 spin_unlock(&priv->bss_loss_lock);
}
