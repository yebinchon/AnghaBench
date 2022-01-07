
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irb {int dummy; } ;
struct ccw_request {int done; int drc; int data; int (* callback ) (struct ccw_device*,int ,int) ;} ;
struct ccw_device {TYPE_2__* private; } ;
struct TYPE_4__ {TYPE_1__* dma_area; struct ccw_request req; } ;
struct TYPE_3__ {int irb; } ;


 int ENODEV ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int memset (int *,int ,int) ;
 int stub1 (struct ccw_device*,int ,int) ;

__attribute__((used)) static void ccwreq_stop(struct ccw_device *cdev, int rc)
{
 struct ccw_request *req = &cdev->private->req;

 if (req->done)
  return;
 req->done = 1;
 ccw_device_set_timeout(cdev, 0);
 memset(&cdev->private->dma_area->irb, 0, sizeof(struct irb));
 if (rc && rc != -ENODEV && req->drc)
  rc = req->drc;
 req->callback(cdev, req->data, rc);
}
