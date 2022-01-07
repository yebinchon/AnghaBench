
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_join_complete {int status; } ;
struct cw1200_common {int join_complete_work; int workqueue; int join_complete_status; int join_timeout; } ;


 scalar_t__ cancel_delayed_work (int *) ;
 int pr_debug (char*,int ) ;
 int queue_work (int ,int *) ;

void cw1200_join_complete_cb(struct cw1200_common *priv,
        struct wsm_join_complete *arg)
{
 pr_debug("[STA] cw1200_join_complete_cb called, status=%d.\n",
   arg->status);

 if (cancel_delayed_work(&priv->join_timeout)) {
  priv->join_complete_status = arg->status;
  queue_work(priv->workqueue, &priv->join_complete_work);
 }
}
