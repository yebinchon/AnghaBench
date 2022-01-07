
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ link_id; int raw_link_id; size_t tid; } ;
struct cw1200_txinfo {TYPE_2__ txpriv; } ;
struct cw1200_common {int buffered_multicasts; TYPE_1__* link_id_db; int multicast_start_work; int workqueue; scalar_t__ sta_asleep_mask; } ;
struct TYPE_3__ {int * buffered; } ;


 scalar_t__ CW1200_LINK_ID_AFTER_DTIM ;
 size_t CW1200_MAX_TID ;
 int queue_work (int ,int *) ;

__attribute__((used)) static bool
cw1200_tx_h_pm_state(struct cw1200_common *priv,
       struct cw1200_txinfo *t)
{
 int was_buffered = 1;

 if (t->txpriv.link_id == CW1200_LINK_ID_AFTER_DTIM &&
     !priv->buffered_multicasts) {
  priv->buffered_multicasts = 1;
  if (priv->sta_asleep_mask)
   queue_work(priv->workqueue,
       &priv->multicast_start_work);
 }

 if (t->txpriv.raw_link_id && t->txpriv.tid < CW1200_MAX_TID)
  was_buffered = priv->link_id_db[t->txpriv.raw_link_id - 1].buffered[t->txpriv.tid]++;

 return !was_buffered;
}
