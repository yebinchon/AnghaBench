
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_psf_cuir_response {int cc; int ssid; int cssid; void* message_id; int chpid; int order; } ;
struct dasd_device {TYPE_1__* path; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int flags; int status; int buildclk; int * block; struct dasd_device* startdev; struct ccw1* cpaddr; scalar_t__ data; } ;
struct ccw1 {int count; int flags; void* cda; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef int __u8 ;
typedef void* __u32 ;
struct TYPE_2__ {int ssid; int cssid; int chpid; } ;


 int CCW_FLAG_SLI ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_VERIFY_PATH ;
 int DASD_ECKD_CCW_PSF ;
 int DASD_ECKD_MAGIC ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PSF_ORDER_CUIR_RESPONSE ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int dasd_sleep_on (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*,int *) ;
 int get_tod_clock () ;
 int pathmask_to_pos (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
dasd_eckd_psf_cuir_response(struct dasd_device *device, int response,
       __u32 message_id, __u8 lpum)
{
 struct dasd_psf_cuir_response *psf_cuir;
 int pos = pathmask_to_pos(lpum);
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 int rc;

 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 1 ,
       sizeof(struct dasd_psf_cuir_response),
       device, ((void*)0));

 if (IS_ERR(cqr)) {
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
      "Could not allocate PSF-CUIR request");
  return PTR_ERR(cqr);
 }

 psf_cuir = (struct dasd_psf_cuir_response *)cqr->data;
 psf_cuir->order = PSF_ORDER_CUIR_RESPONSE;
 psf_cuir->cc = response;
 psf_cuir->chpid = device->path[pos].chpid;
 psf_cuir->message_id = message_id;
 psf_cuir->cssid = device->path[pos].cssid;
 psf_cuir->ssid = device->path[pos].ssid;
 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_PSF;
 ccw->cda = (__u32)(addr_t)psf_cuir;
 ccw->flags = CCW_FLAG_SLI;
 ccw->count = sizeof(struct dasd_psf_cuir_response);

 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->retries = 256;
 cqr->expires = 10*HZ;
 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;
 set_bit(DASD_CQR_VERIFY_PATH, &cqr->flags);

 rc = dasd_sleep_on(cqr);

 dasd_sfree_request(cqr, cqr->memdev);
 return rc;
}
