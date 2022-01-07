
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct subchannel {int opm; scalar_t__ vpm; } ;
struct ccw_request {int lpm; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct TYPE_5__ {scalar_t__ pgid_unknown; scalar_t__ mpath; } ;
struct TYPE_6__ {TYPE_2__ flags; int pgid_todo_mask; struct ccw_request req; } ;


 int EACCES ;
 int SPID_FUNC_ESTABLISH ;
 int SPID_FUNC_MULTI_PATH ;
 int SPID_FUNC_RESIGN ;
 int ccw_request_start (struct ccw_device*) ;
 int lpm_adjust (int,int ) ;
 int pgid_wipeout_start (struct ccw_device*) ;
 int spid_build_cp (struct ccw_device*,int ) ;
 struct subchannel* to_subchannel (int ) ;
 int verify_done (struct ccw_device*,int ) ;

__attribute__((used)) static void spid_do(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;
 u8 fn;


 req->lpm = lpm_adjust(req->lpm, cdev->private->pgid_todo_mask);
 if (!req->lpm)
  goto out_nopath;

 if (req->lpm & sch->opm)
  fn = SPID_FUNC_ESTABLISH;
 else
  fn = SPID_FUNC_RESIGN;
 if (cdev->private->flags.mpath)
  fn |= SPID_FUNC_MULTI_PATH;
 spid_build_cp(cdev, fn);
 ccw_request_start(cdev);
 return;

out_nopath:
 if (cdev->private->flags.pgid_unknown) {

  pgid_wipeout_start(cdev);
  return;
 }
 verify_done(cdev, sch->vpm ? 0 : -EACCES);
}
