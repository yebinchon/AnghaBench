
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {scalar_t__ join_status; int delayed_unjoin; scalar_t__ delayed_link_loss; TYPE_1__* hw; int unjoin_work; int workqueue; } ;
struct TYPE_2__ {int wiphy; } ;


 scalar_t__ CW1200_JOIN_STATUS_MONITOR ;
 int cw1200_cqm_bssloss_sm (struct cw1200_common*,int,int ,int ) ;
 int cw1200_enable_listening (struct cw1200_common*) ;
 int cw1200_update_filtering (struct cw1200_common*) ;
 scalar_t__ queue_work (int ,int *) ;
 int wiphy_dbg (int ,char*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static void cw1200_scan_restart_delayed(struct cw1200_common *priv)
{

 if (priv->join_status == CW1200_JOIN_STATUS_MONITOR) {
  cw1200_enable_listening(priv);
  cw1200_update_filtering(priv);
 }

 if (priv->delayed_unjoin) {
  priv->delayed_unjoin = 0;
  if (queue_work(priv->workqueue, &priv->unjoin_work) <= 0)
   wsm_unlock_tx(priv);
 } else if (priv->delayed_link_loss) {
   wiphy_dbg(priv->hw->wiphy, "[CQM] Requeue BSS loss.\n");
   priv->delayed_link_loss = 0;
   cw1200_cqm_bssloss_sm(priv, 1, 0, 0);
 }
}
