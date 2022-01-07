
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_rssd_lcq {int suborder; int order; } ;
struct dasd_psf_prssd_data {int suborder; int order; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct dasd_eckd_private {TYPE_1__ uid; } ;
struct dasd_device {int default_expires; int cdev; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int flags; int * block; struct dasd_device* startdev; int status; int buildclk; struct ccw1* cpaddr; struct dasd_rssd_lcq* data; } ;
struct ccw1 {int count; void* cda; int flags; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef void* __u32 ;


 int CCW_FLAG_CC ;
 int CCW_FLAG_SLI ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_SUPPRESS_CR ;
 int DASD_ECKD_CCW_PSF ;
 int DASD_ECKD_CCW_RSSD ;
 int DASD_ECKD_MAGIC ;
 int DBF_EVENT_DEVID (int ,int ,char*,...) ;
 int DBF_WARNING ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PSF_ORDER_PRSSD ;
 int PSF_SUBORDER_LCQ ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 scalar_t__ UA_BASE_PAV_ALIAS ;
 scalar_t__ UA_HYPER_PAV_ALIAS ;
 int __set_bit (int ,int *) ;
 int dasd_eckd_cpy_ext_pool_data (struct dasd_device*,struct dasd_rssd_lcq*) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int dasd_sleep_on_interruptible (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*,int *) ;
 int get_tod_clock () ;
 int memset (struct dasd_rssd_lcq*,int ,int) ;

__attribute__((used)) static int dasd_eckd_read_ext_pool_info(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 struct dasd_psf_prssd_data *prssdp;
 struct dasd_rssd_lcq *lcq;
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 int rc;


 if (private->uid.type == UA_BASE_PAV_ALIAS ||
     private->uid.type == UA_HYPER_PAV_ALIAS)
  return 0;

 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 2 ,
       sizeof(*prssdp) + sizeof(*lcq), device, ((void*)0));
 if (IS_ERR(cqr)) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "%s",
    "Could not allocate initialization request");
  return PTR_ERR(cqr);
 }


 prssdp = cqr->data;
 memset(prssdp, 0, sizeof(*prssdp));
 prssdp->order = PSF_ORDER_PRSSD;
 prssdp->suborder = PSF_SUBORDER_LCQ;

 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_PSF;
 ccw->count = sizeof(*prssdp);
 ccw->flags |= CCW_FLAG_CC;
 ccw->cda = (__u32)(addr_t)prssdp;

 lcq = (struct dasd_rssd_lcq *)(prssdp + 1);
 memset(lcq, 0, sizeof(*lcq));

 ccw++;
 ccw->cmd_code = DASD_ECKD_CCW_RSSD;
 ccw->count = sizeof(*lcq);
 ccw->flags |= CCW_FLAG_SLI;
 ccw->cda = (__u32)(addr_t)lcq;

 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->retries = 256;
 cqr->expires = device->default_expires * HZ;

 __set_bit(DASD_CQR_SUPPRESS_CR, &cqr->flags);

 rc = dasd_sleep_on_interruptible(cqr);
 if (rc == 0) {
  dasd_eckd_cpy_ext_pool_data(device, lcq);
 } else {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
    "Reading the logical configuration failed with rc=%d", rc);
 }

 dasd_sfree_request(cqr, cqr->memdev);

 return rc;
}
