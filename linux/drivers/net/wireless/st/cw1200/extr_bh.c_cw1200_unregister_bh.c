
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int * bh_workqueue; int bh_wq; int bh_term; } ;


 int atomic_add (int,int *) ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int pr_debug (char*) ;
 int wake_up (int *) ;

void cw1200_unregister_bh(struct cw1200_common *priv)
{
 atomic_add(1, &priv->bh_term);
 wake_up(&priv->bh_wq);

 flush_workqueue(priv->bh_workqueue);

 destroy_workqueue(priv->bh_workqueue);
 priv->bh_workqueue = ((void*)0);

 pr_debug("[BH] unregistered.\n");
}
