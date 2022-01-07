
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int * tx_queue; } ;


 int cw1200_queue_unlock (int *) ;

__attribute__((used)) static inline void cw1200_tx_queues_unlock(struct cw1200_common *priv)
{
 int i;
 for (i = 0; i < 4; ++i)
  cw1200_queue_unlock(&priv->tx_queue[i]);
}
