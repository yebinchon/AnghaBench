
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int bh_work; int bh_workqueue; int bh_evt_wq; int bh_wq; scalar_t__ buf_id_rx; scalar_t__ buf_id_tx; scalar_t__ hw_bufs_used; scalar_t__ bh_error; int bh_suspend; int bh_term; int bh_tx; int bh_rx; } ;


 int CW1200_BH_RESUMED ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int WARN_ON (int) ;
 int WQ_CPU_INTENSIVE ;
 int WQ_HIGHPRI ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int,int) ;
 int atomic_set (int *,int ) ;
 int cw1200_bh_work ;
 int init_waitqueue_head (int *) ;
 int pr_debug (char*) ;
 int queue_work (int ,int *) ;

int cw1200_register_bh(struct cw1200_common *priv)
{
 int err = 0;

 priv->bh_workqueue = alloc_workqueue("cw1200_bh",
    WQ_MEM_RECLAIM | WQ_HIGHPRI
    | WQ_CPU_INTENSIVE, 1);

 if (!priv->bh_workqueue)
  return -ENOMEM;

 INIT_WORK(&priv->bh_work, cw1200_bh_work);

 pr_debug("[BH] register.\n");

 atomic_set(&priv->bh_rx, 0);
 atomic_set(&priv->bh_tx, 0);
 atomic_set(&priv->bh_term, 0);
 atomic_set(&priv->bh_suspend, CW1200_BH_RESUMED);
 priv->bh_error = 0;
 priv->hw_bufs_used = 0;
 priv->buf_id_tx = 0;
 priv->buf_id_rx = 0;
 init_waitqueue_head(&priv->bh_wq);
 init_waitqueue_head(&priv->bh_evt_wq);

 err = !queue_work(priv->bh_workqueue, &priv->bh_work);
 WARN_ON(err);
 return err;
}
