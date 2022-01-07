
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wsm_scan_complete {int dummy; } ;
struct TYPE_2__ {int status; int timeout; } ;
struct cw1200_common {scalar_t__ mode; TYPE_1__ scan; int workqueue; } ;


 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int queue_delayed_work (int ,int *,int ) ;

void cw1200_scan_complete_cb(struct cw1200_common *priv,
    struct wsm_scan_complete *arg)
{
 if (priv->mode == NL80211_IFTYPE_UNSPECIFIED)

  return;

 if (cancel_delayed_work_sync(&priv->scan.timeout) > 0) {
  priv->scan.status = 1;
  queue_delayed_work(priv->workqueue, &priv->scan.timeout, 0);
 }
}
