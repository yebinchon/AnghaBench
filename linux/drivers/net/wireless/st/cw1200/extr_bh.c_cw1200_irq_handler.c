
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int bh_wq; int bh_rx; scalar_t__ bh_error; } ;


 int __cw1200_irq_enable (struct cw1200_common*,int ) ;
 int atomic_add_return (int,int *) ;
 int pr_debug (char*) ;
 int wake_up (int *) ;

void cw1200_irq_handler(struct cw1200_common *priv)
{
 pr_debug("[BH] irq.\n");



 __cw1200_irq_enable(priv, 0);

 if ( (priv->bh_error))
  return;

 if (atomic_add_return(1, &priv->bh_rx) == 1)
  wake_up(&priv->bh_wq);
}
