
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; int status; } ;
struct cw1200_common {scalar_t__ mode; TYPE_1__ scan; int workqueue; } ;


 int EIO ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int queue_delayed_work (int ,int *,int ) ;

void cw1200_scan_failed_cb(struct cw1200_common *priv)
{
 if (priv->mode == NL80211_IFTYPE_UNSPECIFIED)

  return;

 if (cancel_delayed_work_sync(&priv->scan.timeout) > 0) {
  priv->scan.status = -EIO;
  queue_delayed_work(priv->workqueue, &priv->scan.timeout, 0);
 }
}
