
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct tcw {int dummy; } ;
struct TYPE_7__ {int ena; } ;
struct TYPE_8__ {TYPE_2__ pmcw; } ;
struct subchannel {int lpm; TYPE_3__ schib; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
struct TYPE_9__ {scalar_t__ fake_irb; } ;
struct TYPE_10__ {scalar_t__ state; unsigned long intparm; TYPE_4__ flags; } ;


 scalar_t__ DEV_STATE_ONLINE ;
 scalar_t__ DEV_STATE_VERIFY ;
 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 scalar_t__ FAKE_TM_IRB ;
 int ccw_device_set_timeout (struct ccw_device*,int) ;
 int cio_tm_start_key (struct subchannel*,struct tcw*,int ,int ) ;
 struct subchannel* to_subchannel (int ) ;

int ccw_device_tm_start_timeout_key(struct ccw_device *cdev, struct tcw *tcw,
        unsigned long intparm, u8 lpm, u8 key,
        int expires)
{
 struct subchannel *sch;
 int rc;

 sch = to_subchannel(cdev->dev.parent);
 if (!sch->schib.pmcw.ena)
  return -EINVAL;
 if (cdev->private->state == DEV_STATE_VERIFY) {

  if (!cdev->private->flags.fake_irb) {
   cdev->private->flags.fake_irb = FAKE_TM_IRB;
   cdev->private->intparm = intparm;
   return 0;
  } else

   return -EBUSY;
 }
 if (cdev->private->state != DEV_STATE_ONLINE)
  return -EIO;

 if (lpm) {
  lpm &= sch->lpm;
  if (lpm == 0)
   return -EACCES;
 }
 rc = cio_tm_start_key(sch, tcw, lpm, key);
 if (rc == 0) {
  cdev->private->intparm = intparm;
  if (expires)
   ccw_device_set_timeout(cdev, expires);
 }
 return rc;
}
