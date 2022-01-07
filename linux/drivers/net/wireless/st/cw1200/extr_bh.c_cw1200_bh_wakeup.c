
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int bh_wq; int bh_tx; scalar_t__ bh_error; } ;


 int atomic_add_return (int,int *) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int wake_up (int *) ;

void cw1200_bh_wakeup(struct cw1200_common *priv)
{
 pr_debug("[BH] wakeup.\n");
 if (priv->bh_error) {
  pr_err("[BH] wakeup failed (BH error)\n");
  return;
 }

 if (atomic_add_return(1, &priv->bh_tx) == 1)
  wake_up(&priv->bh_wq);
}
