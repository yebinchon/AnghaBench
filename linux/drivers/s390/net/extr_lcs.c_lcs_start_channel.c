
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lcs_channel {TYPE_1__* ccwdev; int state; scalar_t__ io_idx; scalar_t__ ccws; } ;
struct TYPE_3__ {int dev; } ;


 int DOIO_ALLOW_SUSPEND ;
 int DOIO_DENY_PREFETCH ;
 int LCS_CH_STATE_RUNNING ;
 int LCS_DBF_TEXT_ (int,int ,char*,int ) ;
 int ccw_device_start (TYPE_1__*,scalar_t__,int ,int ,int) ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int get_ccwdev_lock (TYPE_1__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int trace ;

__attribute__((used)) static int
lcs_start_channel(struct lcs_channel *channel)
{
 unsigned long flags;
 int rc;

 LCS_DBF_TEXT_(4, trace,"ssch%s", dev_name(&channel->ccwdev->dev));
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 rc = ccw_device_start(channel->ccwdev,
         channel->ccws + channel->io_idx, 0, 0,
         DOIO_DENY_PREFETCH | DOIO_ALLOW_SUSPEND);
 if (rc == 0)
  channel->state = LCS_CH_STATE_RUNNING;
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);
 if (rc) {
  LCS_DBF_TEXT_(4,trace,"essh%s",
         dev_name(&channel->ccwdev->dev));
  dev_err(&channel->ccwdev->dev,
   "Starting an LCS device resulted in an error,"
   " rc=%d!\n", rc);
 }
 return rc;
}
