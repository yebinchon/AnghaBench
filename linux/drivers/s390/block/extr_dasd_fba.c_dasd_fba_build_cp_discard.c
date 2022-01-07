
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct dasd_device {int default_expires; int default_retries; } ;
struct dasd_ccw_req {int expires; int status; int buildclk; int retries; struct dasd_block* block; struct dasd_device* memdev; struct dasd_device* startdev; int flags; struct LO_fba_data* data; struct ccw1* cpaddr; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; TYPE_1__* base; } ;
struct ccw1 {int flags; } ;
struct LO_fba_data {int dummy; } ;
struct DE_fba_data {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int features; } ;


 unsigned int BLOCKS_PER_PAGE (unsigned int) ;
 int CCW_FLAG_CC ;
 int DASD_CQR_FILLED ;
 int DASD_CQR_FLAGS_FAILFAST ;
 int DASD_FBA_MAGIC ;
 int DASD_FEATURE_FAILFAST ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int WRITE ;
 int blk_mq_rq_to_pdu (struct request*) ;
 scalar_t__ blk_noretry_request (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int ccw_write_no_data (int ) ;
 int ccw_write_zero (int ,int) ;
 int count_ccws (int,int,unsigned int) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int,struct dasd_device*,int ) ;
 int define_extent (int ,struct LO_fba_data*,int ,unsigned int,int,int) ;
 int get_tod_clock () ;
 int locate_record (int ,int ,int ,int,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static struct dasd_ccw_req *dasd_fba_build_cp_discard(
      struct dasd_device *memdev,
      struct dasd_block *block,
      struct request *req)
{
 struct LO_fba_data *LO_data;
 struct dasd_ccw_req *cqr;
 struct ccw1 *ccw;

 sector_t wz_stop = 0, d_stop = 0;
 sector_t first_rec, last_rec;

 unsigned int blksize = block->bp_block;
 unsigned int blocks_per_page;
 int wz_count = 0;
 int d_count = 0;
 int cur_pos = 0;
 int count = 0;
 int cplength;
 int datasize;
 int nr_ccws;

 first_rec = blk_rq_pos(req) >> block->s2b_shift;
 last_rec =
  (blk_rq_pos(req) + blk_rq_sectors(req) - 1) >> block->s2b_shift;
 count = last_rec - first_rec + 1;

 blocks_per_page = BLOCKS_PER_PAGE(blksize);
 nr_ccws = count_ccws(first_rec, last_rec, blocks_per_page);


 cplength = 1 + 2 * nr_ccws;
 datasize = sizeof(struct DE_fba_data) +
  nr_ccws * (sizeof(struct LO_fba_data) + sizeof(struct ccw1));

 cqr = dasd_smalloc_request(DASD_FBA_MAGIC, cplength, datasize, memdev,
       blk_mq_rq_to_pdu(req));
 if (IS_ERR(cqr))
  return cqr;

 ccw = cqr->cpaddr;

 define_extent(ccw++, cqr->data, WRITE, blksize, first_rec, count);
 LO_data = cqr->data + sizeof(struct DE_fba_data);


 if (first_rec % blocks_per_page != 0) {
  wz_stop = first_rec + blocks_per_page -
   (first_rec % blocks_per_page) - 1;
  if (wz_stop > last_rec)
   wz_stop = last_rec;
  wz_count = wz_stop - first_rec + 1;

  ccw[-1].flags |= CCW_FLAG_CC;
  locate_record(ccw++, LO_data++, WRITE, cur_pos, wz_count);

  ccw[-1].flags |= CCW_FLAG_CC;
  ccw_write_zero(ccw++, wz_count * blksize);

  cur_pos = wz_count;
 }


 if (last_rec - (first_rec + cur_pos) + 1 >= blocks_per_page) {

  if ((last_rec - blocks_per_page + 1) % blocks_per_page != 0)
   d_stop = last_rec - ((last_rec - blocks_per_page + 1) %
          blocks_per_page);
  else
   d_stop = last_rec;

  d_count = d_stop - (first_rec + cur_pos) + 1;

  ccw[-1].flags |= CCW_FLAG_CC;
  locate_record(ccw++, LO_data++, WRITE, cur_pos, d_count);

  ccw[-1].flags |= CCW_FLAG_CC;
  ccw_write_no_data(ccw++);

  cur_pos += d_count;
 }


 if (cur_pos == 0 || first_rec + cur_pos - 1 < last_rec) {
  if (d_stop != 0)
   wz_count = last_rec - d_stop;
  else if (wz_stop != 0)
   wz_count = last_rec - wz_stop;
  else
   wz_count = count;

  ccw[-1].flags |= CCW_FLAG_CC;
  locate_record(ccw++, LO_data++, WRITE, cur_pos, wz_count);

  ccw[-1].flags |= CCW_FLAG_CC;
  ccw_write_zero(ccw++, wz_count * blksize);
 }

 if (blk_noretry_request(req) ||
     block->base->features & DASD_FEATURE_FAILFAST)
  set_bit(DASD_CQR_FLAGS_FAILFAST, &cqr->flags);

 cqr->startdev = memdev;
 cqr->memdev = memdev;
 cqr->block = block;
 cqr->expires = memdev->default_expires * HZ;
 cqr->retries = memdev->default_retries;
 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;

 return cqr;
}
