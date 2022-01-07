
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_request {struct ccw1* cp; } ;
struct ccw_device {TYPE_2__* private; } ;
struct ccw1 {int flags; scalar_t__ count; scalar_t__ cda; int cmd_code; } ;
struct TYPE_4__ {TYPE_1__* dma_area; struct ccw_request req; } ;
struct TYPE_3__ {struct ccw1* iccws; } ;


 int CCW_CMD_NOOP ;
 int CCW_FLAG_SLI ;

__attribute__((used)) static void nop_build_cp(struct ccw_device *cdev)
{
 struct ccw_request *req = &cdev->private->req;
 struct ccw1 *cp = cdev->private->dma_area->iccws;

 cp->cmd_code = CCW_CMD_NOOP;
 cp->cda = 0;
 cp->count = 0;
 cp->flags = CCW_FLAG_SLI;
 req->cp = cp;
}
