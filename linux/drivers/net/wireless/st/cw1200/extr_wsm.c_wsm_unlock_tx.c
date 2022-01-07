
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int bh_error; int tx_lock; } ;


 int BUG_ON (int) ;
 int atomic_sub_return (int,int *) ;
 int cw1200_bh_wakeup (struct cw1200_common*) ;
 int pr_debug (char*) ;

void wsm_unlock_tx(struct cw1200_common *priv)
{
 int tx_lock;
 tx_lock = atomic_sub_return(1, &priv->tx_lock);
 BUG_ON(tx_lock < 0);

 if (tx_lock == 0) {
  if (!priv->bh_error)
   cw1200_bh_wakeup(priv);
  pr_debug("[WSM] TX is unlocked.\n");
 }
}
