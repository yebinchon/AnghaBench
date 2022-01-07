
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int tx_lock; } ;


 int atomic_add_return (int,int *) ;
 int pr_debug (char*) ;

void wsm_lock_tx_async(struct cw1200_common *priv)
{
 if (atomic_add_return(1, &priv->tx_lock) == 1)
  pr_debug("[WSM] TX is locked (async).\n");
}
