
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wsm_scan {int num_channels; TYPE_2__* ch; int flags; int type; } ;
struct TYPE_6__ {int timeout; int in_progress; } ;
struct cw1200_common {int join_status; TYPE_3__ scan; int workqueue; int pm_state; int recent_scan; int clear_recent_scan_work; TYPE_1__* hw; } ;
struct TYPE_5__ {scalar_t__ max_chan_time; } ;
struct TYPE_4__ {int wiphy; } ;




 int EBUSY ;
 int atomic_set (int *,int) ;
 int cancel_delayed_work_sync (int *) ;
 int cw1200_pm_stay_awake (int *,int ) ;
 int cw1200_scan_restart_delayed (struct cw1200_common*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int wiphy_dbg (int ,char*,int ,int,int ) ;
 int wsm_scan (struct cw1200_common*,struct wsm_scan*) ;

__attribute__((used)) static int cw1200_scan_start(struct cw1200_common *priv, struct wsm_scan *scan)
{
 int ret, i;
 int tmo = 2000;

 switch (priv->join_status) {
 case 128:
 case 129:
  return -EBUSY;
 default:
  break;
 }

 wiphy_dbg(priv->hw->wiphy, "[SCAN] hw req, type %d, %d channels, flags: 0x%x.\n",
    scan->type, scan->num_channels, scan->flags);

 for (i = 0; i < scan->num_channels; ++i)
  tmo += scan->ch[i].max_chan_time + 10;

 cancel_delayed_work_sync(&priv->clear_recent_scan_work);
 atomic_set(&priv->scan.in_progress, 1);
 atomic_set(&priv->recent_scan, 1);
 cw1200_pm_stay_awake(&priv->pm_state, msecs_to_jiffies(tmo));
 queue_delayed_work(priv->workqueue, &priv->scan.timeout,
      msecs_to_jiffies(tmo));
 ret = wsm_scan(priv, scan);
 if (ret) {
  atomic_set(&priv->scan.in_progress, 0);
  cancel_delayed_work_sync(&priv->scan.timeout);
  cw1200_scan_restart_delayed(priv);
 }
 return ret;
}
