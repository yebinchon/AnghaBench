
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lcs_channel {scalar_t__ state; size_t io_idx; TYPE_2__* ccwdev; TYPE_1__* ccws; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int flags; } ;


 int CCW_FLAG_SUSPEND ;
 scalar_t__ LCS_CH_STATE_RUNNING ;
 scalar_t__ LCS_CH_STATE_SUSPENDED ;
 int LCS_DBF_TEXT_ (int,int ,char*,int ) ;
 int ccw_device_resume (TYPE_2__*) ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int trace ;

__attribute__((used)) static int
__lcs_resume_channel(struct lcs_channel *channel)
{
 int rc;

 if (channel->state != LCS_CH_STATE_SUSPENDED)
  return 0;
 if (channel->ccws[channel->io_idx].flags & CCW_FLAG_SUSPEND)
  return 0;
 LCS_DBF_TEXT_(5, trace, "rsch%s", dev_name(&channel->ccwdev->dev));
 rc = ccw_device_resume(channel->ccwdev);
 if (rc) {
  LCS_DBF_TEXT_(4, trace, "ersc%s",
         dev_name(&channel->ccwdev->dev));
  dev_err(&channel->ccwdev->dev,
   "Sending data from the LCS device to the LAN failed"
   " with rc=%d\n",rc);
 } else
  channel->state = LCS_CH_STATE_RUNNING;
 return rc;

}
