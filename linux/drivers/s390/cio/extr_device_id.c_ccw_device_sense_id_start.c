
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_9__ {int pam; } ;
struct TYPE_10__ {TYPE_4__ pmcw; } ;
struct subchannel {int opm; TYPE_5__ schib; } ;
struct senseid {int dummy; } ;
struct ccw_request {int lpm; int callback; int check; int maxretries; int timeout; struct ccw1* cp; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct ccw1 {int count; int flags; scalar_t__ cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
struct TYPE_8__ {TYPE_2__* dma_area; int dev_id; struct ccw_request req; } ;
struct TYPE_7__ {int senseid; struct ccw1* iccws; } ;


 int CCW_CMD_SENSE_ID ;
 int CCW_FLAG_SLI ;
 int CIO_HEX_EVENT (int,int *,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int SENSE_ID_RETRIES ;
 int SENSE_ID_TIMEOUT ;
 int ccw_request_start (struct ccw_device*) ;
 int memset (struct ccw_request*,int ,int) ;
 int snsid_callback ;
 int snsid_check ;
 int snsid_init (struct ccw_device*) ;
 struct subchannel* to_subchannel (int ) ;

void ccw_device_sense_id_start(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;
 struct ccw1 *cp = cdev->private->dma_area->iccws;

 CIO_TRACE_EVENT(4, "snsid");
 CIO_HEX_EVENT(4, &cdev->private->dev_id, sizeof(cdev->private->dev_id));

 snsid_init(cdev);

 cp->cmd_code = CCW_CMD_SENSE_ID;
 cp->cda = (u32) (addr_t) &cdev->private->dma_area->senseid;
 cp->count = sizeof(struct senseid);
 cp->flags = CCW_FLAG_SLI;

 memset(req, 0, sizeof(*req));
 req->cp = cp;
 req->timeout = SENSE_ID_TIMEOUT;
 req->maxretries = SENSE_ID_RETRIES;
 req->lpm = sch->schib.pmcw.pam & sch->opm;
 req->check = snsid_check;
 req->callback = snsid_callback;
 ccw_request_start(cdev);
}
