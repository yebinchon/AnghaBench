
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int expires; int retries; int status; int buildclk; struct dasd_device* memdev; struct dasd_device* startdev; scalar_t__ data; struct ccw1* cpaddr; } ;
struct ccw1 {int count; scalar_t__ flags; scalar_t__ cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int dev; } ;


 int CCW_CMD_RDC ;
 int DASD_CQR_FILLED ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int,int,int,struct dasd_device*,int *) ;
 int dev_err (int *,char*,char*) ;
 int get_tod_clock () ;

__attribute__((used)) static struct dasd_ccw_req *dasd_generic_build_rdc(struct dasd_device *device,
         int rdc_buffer_size,
         int magic)
{
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;

 cqr = dasd_smalloc_request(magic, 1 , rdc_buffer_size, device,
       ((void*)0));

 if (IS_ERR(cqr)) {

  dev_err(&device->cdev->dev,
    "An error occurred in the DASD device driver, "
    "reason=%s\n", "13");
  return cqr;
 }

 ccw = cqr->cpaddr;
 ccw->cmd_code = CCW_CMD_RDC;
 ccw->cda = (__u32)(addr_t) cqr->data;
 ccw->flags = 0;
 ccw->count = rdc_buffer_size;
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->expires = 10*HZ;
 cqr->retries = 256;
 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;
 return cqr;
}
