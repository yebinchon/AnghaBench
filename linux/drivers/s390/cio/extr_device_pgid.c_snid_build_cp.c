
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pgid {int dummy; } ;
struct ccw_request {struct ccw1* cp; int lpm; } ;
struct ccw_device {TYPE_2__* private; } ;
struct ccw1 {int count; int flags; scalar_t__ cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
struct TYPE_4__ {TYPE_1__* dma_area; struct ccw_request req; } ;
struct TYPE_3__ {int * pgid; struct ccw1* iccws; } ;


 int CCW_CMD_SENSE_PGID ;
 int CCW_FLAG_SLI ;
 int pathmask_to_pos (int ) ;

__attribute__((used)) static void snid_build_cp(struct ccw_device *cdev)
{
 struct ccw_request *req = &cdev->private->req;
 struct ccw1 *cp = cdev->private->dma_area->iccws;
 int i = pathmask_to_pos(req->lpm);


 cp->cmd_code = CCW_CMD_SENSE_PGID;
 cp->cda = (u32) (addr_t) &cdev->private->dma_area->pgid[i];
 cp->count = sizeof(struct pgid);
 cp->flags = CCW_FLAG_SLI;
 req->cp = cp;
}
