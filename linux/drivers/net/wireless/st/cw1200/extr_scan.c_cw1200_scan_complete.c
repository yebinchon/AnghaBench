
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int work; int lock; scalar_t__ direct_probe; } ;
struct cw1200_common {TYPE_2__ scan; TYPE_1__* hw; int clear_recent_scan_work; int workqueue; } ;
struct TYPE_3__ {int wiphy; } ;


 int HZ ;
 int cw1200_scan_restart_delayed (struct cw1200_common*) ;
 int cw1200_scan_work (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int up (int *) ;
 int wiphy_dbg (int ,char*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static void cw1200_scan_complete(struct cw1200_common *priv)
{
 queue_delayed_work(priv->workqueue, &priv->clear_recent_scan_work, HZ);
 if (priv->scan.direct_probe) {
  wiphy_dbg(priv->hw->wiphy, "[SCAN] Direct probe complete.\n");
  cw1200_scan_restart_delayed(priv);
  priv->scan.direct_probe = 0;
  up(&priv->scan.lock);
  wsm_unlock_tx(priv);
 } else {
  cw1200_scan_work(&priv->scan.work);
 }
}
