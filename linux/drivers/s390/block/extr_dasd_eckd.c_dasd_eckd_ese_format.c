
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct format_data_t {unsigned int blksize; int intensity; void* stop_unit; void* start_unit; } ;
struct dasd_eckd_private {scalar_t__ uses_cdl; int rdc_data; } ;
struct dasd_device {struct dasd_block* block; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int callback; TYPE_1__* block; struct request* callback_data; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; } ;
typedef void* sector_t ;
struct TYPE_2__ {struct dasd_device* base; } ;


 int DASD_FMT_INT_COMPAT ;
 int EINVAL ;
 struct dasd_ccw_req* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 struct dasd_ccw_req* dasd_eckd_build_format (struct dasd_device*,struct dasd_device*,struct format_data_t*,int ) ;
 int dasd_eckd_ese_format_cb ;
 int dasd_eckd_format_sanity_checks (struct dasd_device*,struct format_data_t*) ;
 unsigned int recs_per_track (int *,int ,unsigned int) ;
 int sector_div (void*,unsigned int) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_eckd_ese_format(struct dasd_device *startdev, struct dasd_ccw_req *cqr)
{
 struct dasd_eckd_private *private;
 struct format_data_t fdata;
 unsigned int recs_per_trk;
 struct dasd_ccw_req *fcqr;
 struct dasd_device *base;
 struct dasd_block *block;
 unsigned int blksize;
 struct request *req;
 sector_t first_trk;
 sector_t last_trk;
 int rc;

 req = cqr->callback_data;
 base = cqr->block->base;
 private = base->private;
 block = base->block;
 blksize = block->bp_block;
 recs_per_trk = recs_per_track(&private->rdc_data, 0, blksize);

 first_trk = blk_rq_pos(req) >> block->s2b_shift;
 sector_div(first_trk, recs_per_trk);
 last_trk =
  (blk_rq_pos(req) + blk_rq_sectors(req) - 1) >> block->s2b_shift;
 sector_div(last_trk, recs_per_trk);

 fdata.start_unit = first_trk;
 fdata.stop_unit = last_trk;
 fdata.blksize = blksize;
 fdata.intensity = private->uses_cdl ? DASD_FMT_INT_COMPAT : 0;

 rc = dasd_eckd_format_sanity_checks(base, &fdata);
 if (rc)
  return ERR_PTR(-EINVAL);





 fcqr = dasd_eckd_build_format(base, startdev, &fdata, 0);
 if (IS_ERR(fcqr))
  return fcqr;

 fcqr->callback = dasd_eckd_ese_format_cb;

 return fcqr;
}
