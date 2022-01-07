
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eckd_count {int dummy; } ;
struct dasd_eckd_private {struct eckd_count* count_area; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int retries; int flags; int status; int buildclk; struct dasd_device* memdev; struct dasd_device* startdev; int * block; struct LO_eckd_data* data; struct ccw1* cpaddr; } ;
struct ccw1 {int count; void* cda; scalar_t__ flags; void* cmd_code; } ;
struct LO_eckd_data {int dummy; } ;
struct DE_eckd_data {int dummy; } ;
typedef scalar_t__ addr_t ;
typedef void* __u32 ;


 scalar_t__ CCW_FLAG_CC ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_SUPPRESS_NRF ;
 void* DASD_ECKD_CCW_READ_COUNT ;
 int DASD_ECKD_MAGIC ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*,int *) ;
 int define_extent (int ,struct LO_eckd_data*,int ,int,void*,struct dasd_device*,int ) ;
 int get_tod_clock () ;
 int locate_record (int ,int ,int,int ,int,void*,struct dasd_device*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_eckd_analysis_ccw(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 struct eckd_count *count_data;
 struct LO_eckd_data *LO_data;
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;
 int cplength, datasize;
 int i;

 cplength = 8;
 datasize = sizeof(struct DE_eckd_data) + 2*sizeof(struct LO_eckd_data);
 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, cplength, datasize, device,
       ((void*)0));
 if (IS_ERR(cqr))
  return cqr;
 ccw = cqr->cpaddr;

 define_extent(ccw++, cqr->data, 0, 1,
        DASD_ECKD_CCW_READ_COUNT, device, 0);
 LO_data = cqr->data + sizeof(struct DE_eckd_data);

 ccw[-1].flags |= CCW_FLAG_CC;
 locate_record(ccw++, LO_data++, 0, 0, 4,
        DASD_ECKD_CCW_READ_COUNT, device, 0);

 count_data = private->count_area;
 for (i = 0; i < 4; i++) {
  ccw[-1].flags |= CCW_FLAG_CC;
  ccw->cmd_code = DASD_ECKD_CCW_READ_COUNT;
  ccw->flags = 0;
  ccw->count = 8;
  ccw->cda = (__u32)(addr_t) count_data;
  ccw++;
  count_data++;
 }


 ccw[-1].flags |= CCW_FLAG_CC;
 locate_record(ccw++, LO_data++, 1, 0, 1,
        DASD_ECKD_CCW_READ_COUNT, device, 0);

 ccw[-1].flags |= CCW_FLAG_CC;
 ccw->cmd_code = DASD_ECKD_CCW_READ_COUNT;
 ccw->flags = 0;
 ccw->count = 8;
 ccw->cda = (__u32)(addr_t) count_data;

 cqr->block = ((void*)0);
 cqr->startdev = device;
 cqr->memdev = device;
 cqr->retries = 255;
 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;

 set_bit(DASD_CQR_SUPPRESS_NRF, &cqr->flags);

 return cqr;
}
