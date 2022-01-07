
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int tx_lock; } ;


 int atomic_add_return (int,int *) ;
 int pr_debug (char*) ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;
 scalar_t__ wsm_flush_tx (struct cw1200_common*) ;

void wsm_lock_tx(struct cw1200_common *priv)
{
 wsm_cmd_lock(priv);
 if (atomic_add_return(1, &priv->tx_lock) == 1) {
  if (wsm_flush_tx(priv))
   pr_debug("[WSM] TX is locked.\n");
 }
 wsm_cmd_unlock(priv);
}
