
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int lpum; int * chpid; } ;
struct TYPE_9__ {TYPE_3__ pmcw; int scsw; } ;
struct TYPE_7__ {int cssid; } ;
struct subchannel {TYPE_4__ schib; TYPE_2__ schid; } ;
struct ccw_request {int timeout; int drc; } ;
struct TYPE_10__ {int parent; } ;
struct ccw_device {TYPE_5__ dev; TYPE_1__* private; } ;
struct TYPE_6__ {struct ccw_request req; } ;


 int ENODEV ;
 int ETIME ;
 int HZ ;
 int ccwreq_next_path (struct ccw_device*) ;
 int ccwreq_stop (struct ccw_device*,int) ;
 int cio_clear (struct subchannel*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 int dev_name (TYPE_5__*) ;
 int pr_warn (char*,int ,int,int ,int ,int ,int ) ;
 int scsw_cstat (int *) ;
 int scsw_dstat (int *) ;
 struct subchannel* to_subchannel (int ) ;

void ccw_request_timeout(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;
 int rc = -ENODEV, chp;

 if (cio_update_schib(sch))
  goto err;

 for (chp = 0; chp < 8; chp++) {
  if ((0x80 >> chp) & sch->schib.pmcw.lpum)
   pr_warn("%s: No interrupt was received within %lus (CS=%02x, DS=%02x, CHPID=%x.%02x)\n",
    dev_name(&cdev->dev), req->timeout / HZ,
    scsw_cstat(&sch->schib.scsw),
    scsw_dstat(&sch->schib.scsw),
    sch->schid.cssid,
    sch->schib.pmcw.chpid[chp]);
 }

 if (!ccwreq_next_path(cdev)) {

  req->drc = -ETIME;
 }
 rc = cio_clear(sch);
 if (rc)
  goto err;
 return;

err:
 ccwreq_stop(cdev, rc);
}
