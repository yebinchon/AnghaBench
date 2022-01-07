
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dasd_psf_query_host_access {int dummy; } ;
struct dasd_psf_prssd_data {int volume; int lss; int suborder; int order; } ;
struct TYPE_5__ {int* feature; } ;
struct dasd_eckd_private {TYPE_3__* ned; TYPE_2__ features; TYPE_1__* lcu; } ;
struct dasd_device {int cdev; int block; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int flags; int status; int buildclk; struct ccw1* cpaddr; scalar_t__ data; int * block; struct dasd_device* startdev; } ;
struct ccw1 {int count; void* cda; int flags; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef void* __u32 ;
struct TYPE_6__ {int unit_addr; int ID; } ;
struct TYPE_4__ {scalar_t__ pav; } ;


 int CCW_FLAG_CC ;
 int CCW_FLAG_SLI ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_SUPPRESS_CR ;
 int DASD_ECKD_CCW_PSF ;
 int DASD_ECKD_CCW_RSSD ;
 int DASD_ECKD_MAGIC ;
 int DBF_EVENT_DEVID (int ,int ,char*,...) ;
 int DBF_WARNING ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ HYPER_PAV ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PSF_ORDER_PRSSD ;
 int PSF_SUBORDER_QHA ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 int __set_bit (int ,int *) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int dasd_sleep_on_interruptible (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*,int *) ;
 int get_tod_clock () ;
 int kfree (struct dasd_psf_query_host_access*) ;
 struct dasd_psf_query_host_access* kzalloc (int,int) ;
 int memset (struct dasd_psf_prssd_data*,int ,int) ;

__attribute__((used)) static int dasd_eckd_query_host_access(struct dasd_device *device,
           struct dasd_psf_query_host_access *data)
{
 struct dasd_eckd_private *private = device->private;
 struct dasd_psf_query_host_access *host_access;
 struct dasd_psf_prssd_data *prssdp;
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 int rc;


 if (!device->block && private->lcu->pav == HYPER_PAV)
  return -EOPNOTSUPP;


 if (!(private->features.feature[14] & 0x80))
  return -EOPNOTSUPP;

 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 1 + 1 ,
       sizeof(struct dasd_psf_prssd_data) + 1,
       device, ((void*)0));
 if (IS_ERR(cqr)) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "%s",
    "Could not allocate read message buffer request");
  return PTR_ERR(cqr);
 }
 host_access = kzalloc(sizeof(*host_access), GFP_KERNEL | GFP_DMA);
 if (!host_access) {
  dasd_sfree_request(cqr, device);
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "%s",
    "Could not allocate host_access buffer");
  return -ENOMEM;
 }
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->retries = 256;
 cqr->expires = 10 * HZ;


 prssdp = (struct dasd_psf_prssd_data *) cqr->data;
 memset(prssdp, 0, sizeof(struct dasd_psf_prssd_data));
 prssdp->order = PSF_ORDER_PRSSD;
 prssdp->suborder = PSF_SUBORDER_QHA;

 prssdp->lss = private->ned->ID;
 prssdp->volume = private->ned->unit_addr;


 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_PSF;
 ccw->count = sizeof(struct dasd_psf_prssd_data);
 ccw->flags |= CCW_FLAG_CC;
 ccw->flags |= CCW_FLAG_SLI;
 ccw->cda = (__u32)(addr_t) prssdp;


 ccw++;
 ccw->cmd_code = DASD_ECKD_CCW_RSSD;
 ccw->count = sizeof(struct dasd_psf_query_host_access);
 ccw->flags |= CCW_FLAG_SLI;
 ccw->cda = (__u32)(addr_t) host_access;

 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;

 __set_bit(DASD_CQR_SUPPRESS_CR, &cqr->flags);
 rc = dasd_sleep_on_interruptible(cqr);
 if (rc == 0) {
  *data = *host_access;
 } else {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
    "Reading host access data failed with rc=%d\n",
    rc);
  rc = -EOPNOTSUPP;
 }

 dasd_sfree_request(cqr, cqr->memdev);
 kfree(host_access);
 return rc;
}
