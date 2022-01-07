
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_rssd_messages {int suborder; int order; } ;
struct dasd_psf_prssd_data {int suborder; int order; } ;
struct dasd_device {int cdev; } ;
struct dasd_ccw_req {int expires; int retries; struct dasd_device* memdev; scalar_t__ lpm; scalar_t__ data; int status; int buildclk; struct ccw1* cpaddr; int flags; int * block; struct dasd_device* startdev; } ;
struct ccw1 {int count; void* cda; int flags; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u8 ;
typedef void* __u32 ;


 int CCW_FLAG_CC ;
 int CCW_FLAG_SLI ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_FLAGS_USE_ERP ;
 int DASD_CQR_VERIFY_PATH ;
 int DASD_ECKD_CCW_PSF ;
 int DASD_ECKD_CCW_RSSD ;
 int DASD_ECKD_MAGIC ;
 int DBF_EVENT_DEVID (int ,int ,char*,...) ;
 int DBF_WARNING ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PSF_ORDER_PRSSD ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 int clear_bit (int ,int *) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int dasd_sleep_on_immediatly (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*,int *) ;
 int get_tod_clock () ;
 int memcpy (struct dasd_rssd_messages*,struct dasd_rssd_messages*,int) ;
 int memset (struct dasd_rssd_messages*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int dasd_eckd_read_message_buffer(struct dasd_device *device,
      struct dasd_rssd_messages *messages,
      __u8 lpum)
{
 struct dasd_rssd_messages *message_buf;
 struct dasd_psf_prssd_data *prssdp;
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 int rc;

 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 1 + 1 ,
       (sizeof(struct dasd_psf_prssd_data) +
        sizeof(struct dasd_rssd_messages)),
       device, ((void*)0));
 if (IS_ERR(cqr)) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "%s",
    "Could not allocate read message buffer request");
  return PTR_ERR(cqr);
 }

 cqr->lpm = lpum;
retry:
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->expires = 10 * HZ;
 set_bit(DASD_CQR_VERIFY_PATH, &cqr->flags);



 clear_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
 cqr->retries = 256;


 prssdp = (struct dasd_psf_prssd_data *) cqr->data;
 memset(prssdp, 0, sizeof(struct dasd_psf_prssd_data));
 prssdp->order = PSF_ORDER_PRSSD;
 prssdp->suborder = 0x03;


 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_PSF;
 ccw->count = sizeof(struct dasd_psf_prssd_data);
 ccw->flags |= CCW_FLAG_CC;
 ccw->flags |= CCW_FLAG_SLI;
 ccw->cda = (__u32)(addr_t) prssdp;


 message_buf = (struct dasd_rssd_messages *) (prssdp + 1);
 memset(message_buf, 0, sizeof(struct dasd_rssd_messages));

 ccw++;
 ccw->cmd_code = DASD_ECKD_CCW_RSSD;
 ccw->count = sizeof(struct dasd_rssd_messages);
 ccw->flags |= CCW_FLAG_SLI;
 ccw->cda = (__u32)(addr_t) message_buf;

 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;
 rc = dasd_sleep_on_immediatly(cqr);
 if (rc == 0) {
  prssdp = (struct dasd_psf_prssd_data *) cqr->data;
  message_buf = (struct dasd_rssd_messages *)
   (prssdp + 1);
  memcpy(messages, message_buf,
         sizeof(struct dasd_rssd_messages));
 } else if (cqr->lpm) {





  cqr->lpm = 0;
  goto retry;
 } else
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev,
    "Reading messages failed with rc=%d\n"
    , rc);
 dasd_sfree_request(cqr, cqr->memdev);
 return rc;
}
