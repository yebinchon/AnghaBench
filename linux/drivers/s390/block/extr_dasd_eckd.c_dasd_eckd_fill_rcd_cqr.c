
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int expires; int lpm; int retries; int flags; int status; int buildclk; int * block; struct dasd_device* memdev; struct dasd_device* startdev; int magic; struct ccw1* cpaddr; } ;
struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;


 int DASD_CQR_FILLED ;
 int DASD_CQR_VERIFY_PATH ;
 int DASD_ECKD_CCW_RCD ;
 int DASD_ECKD_MAGIC ;
 int DASD_ECKD_RCD_DATA_SIZE ;
 int HZ ;
 int get_tod_clock () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void dasd_eckd_fill_rcd_cqr(struct dasd_device *device,
       struct dasd_ccw_req *cqr,
       __u8 *rcd_buffer,
       __u8 lpm)
{
 struct ccw1 *ccw;




 rcd_buffer[0] = 0xE5;
 rcd_buffer[1] = 0xF1;
 rcd_buffer[2] = 0x4B;
 rcd_buffer[3] = 0xF0;

 ccw = cqr->cpaddr;
 ccw->cmd_code = DASD_ECKD_CCW_RCD;
 ccw->flags = 0;
 ccw->cda = (__u32)(addr_t)rcd_buffer;
 ccw->count = DASD_ECKD_RCD_DATA_SIZE;
 cqr->magic = DASD_ECKD_MAGIC;

 cqr->startdev = device;
 cqr->memdev = device;
 cqr->block = ((void*)0);
 cqr->expires = 10*HZ;
 cqr->lpm = lpm;
 cqr->retries = 256;
 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;
 set_bit(DASD_CQR_VERIFY_PATH, &cqr->flags);
}
