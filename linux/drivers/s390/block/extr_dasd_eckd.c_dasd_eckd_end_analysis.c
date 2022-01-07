
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eckd_count {int kl; int dl; scalar_t__ cyl; scalar_t__ head; int record; } ;
struct TYPE_4__ {unsigned long trk_per_cyl; } ;
struct dasd_eckd_private {int init_cqr_status; int uses_cdl; TYPE_2__ rdc_data; scalar_t__ real_cyl; struct eckd_count* count_area; } ;
struct dasd_device {int features; TYPE_1__* cdev; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int dummy; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; unsigned long blocks; struct dasd_device* base; } ;
struct TYPE_3__ {int dev; } ;


 int DASD_FEATURE_USERAW ;
 unsigned int DASD_RAW_BLOCKSIZE ;
 unsigned int DASD_RAW_BLOCK_PER_TRACK ;
 int EIO ;
 int EMEDIUMTYPE ;
 int INIT_CQR_ERROR ;
 int INIT_CQR_UNFORMATTED ;
 scalar_t__* count_area_head ;
 int* count_area_rec ;
 scalar_t__ dasd_check_blocksize (unsigned int) ;
 struct dasd_ccw_req* dasd_eckd_analysis_ccw (struct dasd_device*) ;
 int dasd_eckd_analysis_evaluation (struct dasd_ccw_req*) ;
 int dasd_eckd_cdl_reclen (int) ;
 int dasd_sfree_request (struct dasd_ccw_req*,struct dasd_device*) ;
 int dasd_sleep_on (struct dasd_ccw_req*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,unsigned long,unsigned int,char*) ;
 int dev_warn (int *,char*) ;
 unsigned int recs_per_track (TYPE_2__*,int ,unsigned int) ;

__attribute__((used)) static int dasd_eckd_end_analysis(struct dasd_block *block)
{
 struct dasd_device *device = block->base;
 struct dasd_eckd_private *private = device->private;
 struct eckd_count *count_area;
 unsigned int sb, blk_per_trk;
 int status, i;
 struct dasd_ccw_req *init_cqr;

 status = private->init_cqr_status;
 private->init_cqr_status = -1;
 if (status == INIT_CQR_ERROR) {

  init_cqr = dasd_eckd_analysis_ccw(device);
  dasd_sleep_on(init_cqr);
  status = dasd_eckd_analysis_evaluation(init_cqr);
  dasd_sfree_request(init_cqr, device);
 }

 if (device->features & DASD_FEATURE_USERAW) {
  block->bp_block = DASD_RAW_BLOCKSIZE;
  blk_per_trk = DASD_RAW_BLOCK_PER_TRACK;
  block->s2b_shift = 3;
  goto raw;
 }

 if (status == INIT_CQR_UNFORMATTED) {
  dev_warn(&device->cdev->dev, "The DASD is not formatted\n");
  return -EMEDIUMTYPE;
 } else if (status == INIT_CQR_ERROR) {
  dev_err(&device->cdev->dev,
   "Detecting the DASD disk layout failed because "
   "of an I/O error\n");
  return -EIO;
 }

 private->uses_cdl = 1;

 count_area = ((void*)0);
 for (i = 0; i < 3; i++) {
  if (private->count_area[i].kl != 4 ||
      private->count_area[i].dl != dasd_eckd_cdl_reclen(i) - 4 ||
      private->count_area[i].cyl != 0 ||
      private->count_area[i].head != count_area_head[i] ||
      private->count_area[i].record != count_area_rec[i]) {
   private->uses_cdl = 0;
   break;
  }
 }
 if (i == 3)
  count_area = &private->count_area[3];

 if (private->uses_cdl == 0) {
  for (i = 0; i < 5; i++) {
   if ((private->count_area[i].kl != 0) ||
       (private->count_area[i].dl !=
        private->count_area[0].dl) ||
       private->count_area[i].cyl != 0 ||
       private->count_area[i].head != count_area_head[i] ||
       private->count_area[i].record != count_area_rec[i])
    break;
  }
  if (i == 5)
   count_area = &private->count_area[0];
 } else {
  if (private->count_area[3].record == 1)
   dev_warn(&device->cdev->dev,
     "Track 0 has no records following the VTOC\n");
 }

 if (count_area != ((void*)0) && count_area->kl == 0) {

  if (dasd_check_blocksize(count_area->dl) == 0)
   block->bp_block = count_area->dl;
 }
 if (block->bp_block == 0) {
  dev_warn(&device->cdev->dev,
    "The disk layout of the DASD is not supported\n");
  return -EMEDIUMTYPE;
 }
 block->s2b_shift = 0;
 for (sb = 512; sb < block->bp_block; sb = sb << 1)
  block->s2b_shift++;

 blk_per_trk = recs_per_track(&private->rdc_data, 0, block->bp_block);

raw:
 block->blocks = ((unsigned long) private->real_cyl *
     private->rdc_data.trk_per_cyl *
     blk_per_trk);

 dev_info(&device->cdev->dev,
   "DASD with %u KB/block, %lu KB total size, %u KB/track, "
   "%s\n", (block->bp_block >> 10),
   (((unsigned long) private->real_cyl *
     private->rdc_data.trk_per_cyl *
     blk_per_trk * (block->bp_block >> 9)) >> 1),
   ((blk_per_trk * block->bp_block) >> 10),
   private->uses_cdl ?
   "compatible disk layout" : "linux disk layout");

 return 0;
}
