
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_diag_req {int bio; int block_count; } ;
struct TYPE_4__ {int flaga; int bio_list; scalar_t__ interrupt_params; int block_count; int flags; scalar_t__ key; int dev_nr; } ;
struct TYPE_3__ {int devno; } ;
struct dasd_diag_private {TYPE_2__ iob; TYPE_1__ dev_id; } ;
struct dasd_device {struct dasd_diag_private* private; } ;
struct dasd_ccw_req {scalar_t__ retries; int intrc; int status; void* stopclk; int starttime; void* startclk; struct dasd_diag_req* data; struct dasd_device* startdev; } ;
typedef scalar_t__ addr_t ;


 int DASD_CQR_ERROR ;
 int DASD_CQR_IN_IO ;
 int DASD_CQR_QUEUED ;
 int DASD_CQR_SUCCESS ;
 int DASD_DIAG_FLAGA_DEFAULT ;
 int DASD_DIAG_RWFLAG_ASYNC ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,...) ;
 int DBF_ERR ;
 int DBF_WARNING ;
 int EACCES ;
 int EIO ;
 int RW_BIO ;
 int dasd_diag_erp (struct dasd_device*) ;
 int dia250 (TYPE_2__*,int ) ;
 void* get_tod_clock () ;
 int jiffies ;

__attribute__((used)) static int
dasd_start_diag(struct dasd_ccw_req * cqr)
{
 struct dasd_device *device;
 struct dasd_diag_private *private;
 struct dasd_diag_req *dreq;
 int rc;

 device = cqr->startdev;
 if (cqr->retries < 0) {
  DBF_DEV_EVENT(DBF_ERR, device, "DIAG start_IO: request %p "
       "- no retry left)", cqr);
  cqr->status = DASD_CQR_ERROR;
  return -EIO;
 }
 private = device->private;
 dreq = cqr->data;

 private->iob.dev_nr = private->dev_id.devno;
 private->iob.key = 0;
 private->iob.flags = DASD_DIAG_RWFLAG_ASYNC;
 private->iob.block_count = dreq->block_count;
 private->iob.interrupt_params = (addr_t) cqr;
 private->iob.bio_list = dreq->bio;
 private->iob.flaga = DASD_DIAG_FLAGA_DEFAULT;

 cqr->startclk = get_tod_clock();
 cqr->starttime = jiffies;
 cqr->retries--;

 rc = dia250(&private->iob, RW_BIO);
 switch (rc) {
 case 0:
  cqr->stopclk = get_tod_clock();
  cqr->status = DASD_CQR_SUCCESS;


                rc = -EACCES;
  break;
 case 8:
  cqr->status = DASD_CQR_IN_IO;
  rc = 0;
  break;
 default:
  cqr->status = DASD_CQR_QUEUED;
  DBF_DEV_EVENT(DBF_WARNING, device, "dia250 returned rc=%d", rc);
  dasd_diag_erp(device);
  rc = -EIO;
  break;
 }
 cqr->intrc = rc;
 return rc;
}
