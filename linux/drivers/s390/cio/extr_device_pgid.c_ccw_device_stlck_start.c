
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pam; } ;
struct TYPE_8__ {TYPE_3__ pmcw; } ;
struct subchannel {int opm; TYPE_4__ schib; } ;
struct ccw_request {int lpm; int callback; void* data; int maxretries; int timeout; } ;
struct TYPE_5__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {int dev_id; struct ccw_request req; } ;


 int CIO_HEX_EVENT (int,int *,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int PGID_RETRIES ;
 int PGID_TIMEOUT ;
 int ccw_request_start (struct ccw_device*) ;
 int memset (struct ccw_request*,int ,int) ;
 int stlck_build_cp (struct ccw_device*,void*,void*) ;
 int stlck_callback ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void ccw_device_stlck_start(struct ccw_device *cdev, void *data,
       void *buf1, void *buf2)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct ccw_request *req = &cdev->private->req;

 CIO_TRACE_EVENT(4, "stlck");
 CIO_HEX_EVENT(4, &cdev->private->dev_id, sizeof(cdev->private->dev_id));

 memset(req, 0, sizeof(*req));
 req->timeout = PGID_TIMEOUT;
 req->maxretries = PGID_RETRIES;
 req->lpm = sch->schib.pmcw.pam & sch->opm;
 req->data = data;
 req->callback = stlck_callback;
 stlck_build_cp(cdev, buf1, buf2);
 ccw_request_start(cdev);
}
