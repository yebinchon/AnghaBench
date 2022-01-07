
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {int fc; } ;
struct pgid {TYPE_3__ inf; } ;
struct ccw_request {struct ccw1* cp; int lpm; } ;
struct ccw_device {TYPE_2__* private; } ;
struct ccw1 {int count; int flags; scalar_t__ cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
struct TYPE_5__ {TYPE_1__* dma_area; struct ccw_request req; } ;
struct TYPE_4__ {struct pgid* pgid; struct ccw1* iccws; } ;


 int CCW_CMD_SET_PGID ;
 int CCW_FLAG_SLI ;
 int pathmask_to_pos (int ) ;

__attribute__((used)) static void spid_build_cp(struct ccw_device *cdev, u8 fn)
{
 struct ccw_request *req = &cdev->private->req;
 struct ccw1 *cp = cdev->private->dma_area->iccws;
 int i = pathmask_to_pos(req->lpm);
 struct pgid *pgid = &cdev->private->dma_area->pgid[i];

 pgid->inf.fc = fn;
 cp->cmd_code = CCW_CMD_SET_PGID;
 cp->cda = (u32) (addr_t) pgid;
 cp->count = sizeof(*pgid);
 cp->flags = CCW_FLAG_SLI;
 req->cp = cp;
}
