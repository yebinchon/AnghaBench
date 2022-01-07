
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int mp; } ;
struct subchannel {int vpm; TYPE_3__ config; } ;
struct TYPE_8__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_4__ dev; } ;
struct ccw_dev_id {int devno; int ssid; } ;
struct TYPE_5__ {int mpath; int pgroup; } ;
struct TYPE_6__ {TYPE_1__ flags; struct ccw_dev_id dev_id; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int,int,int,int ) ;
 int ccw_device_verify_done (struct ccw_device*,int) ;
 int cio_commit_config (struct subchannel*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void verify_done(struct ccw_device *cdev, int rc)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_dev_id *id = &cdev->private->dev_id;
 int mpath = cdev->private->flags.mpath;
 int pgroup = cdev->private->flags.pgroup;

 if (rc)
  goto out;

 if (sch->config.mp != mpath) {
  sch->config.mp = mpath;
  rc = cio_commit_config(sch);
 }
out:
 CIO_MSG_EVENT(2, "vrfy: device 0.%x.%04x: rc=%d pgroup=%d mpath=%d "
    "vpm=%02x\n", id->ssid, id->devno, rc, pgroup, mpath,
    sch->vpm);
 ccw_device_verify_done(cdev, rc);
}
