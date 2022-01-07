
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct scsi_disk {scalar_t__ ws16; TYPE_1__* device; } ;
struct scsi_device {scalar_t__ sector_size; } ;
struct scsi_cmnd {int cmd_len; scalar_t__ transfersize; int allowed; int * cmnd; struct scsi_device* device; struct request* request; } ;
struct request {scalar_t__ __data_len; int timeout; struct bio* bio; int rq_disk; } ;
struct bio {int dummy; } ;
typedef int blk_status_t ;
struct TYPE_4__ {scalar_t__ bv_len; } ;
struct TYPE_3__ {scalar_t__ no_write_same; } ;


 int BLK_STS_TARGET ;
 int BUG_ON (int) ;
 int SD_MAX_RETRIES ;
 int SD_WRITE_SAME_TIMEOUT ;
 int WRITE_SAME ;
 int WRITE_SAME_16 ;
 TYPE_2__ bio_iovec (struct bio*) ;
 scalar_t__ bio_offset (struct bio*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int put_unaligned_be16 (int,int *) ;
 int put_unaligned_be32 (int,int *) ;
 int put_unaligned_be64 (int,int *) ;
 struct scsi_disk* scsi_disk (int ) ;
 int scsi_init_io (struct scsi_cmnd*) ;
 int sectors_to_logical (struct scsi_device*,int ) ;

__attribute__((used)) static blk_status_t sd_setup_write_same_cmnd(struct scsi_cmnd *cmd)
{
 struct request *rq = cmd->request;
 struct scsi_device *sdp = cmd->device;
 struct scsi_disk *sdkp = scsi_disk(rq->rq_disk);
 struct bio *bio = rq->bio;
 u64 lba = sectors_to_logical(sdp, blk_rq_pos(rq));
 u32 nr_blocks = sectors_to_logical(sdp, blk_rq_sectors(rq));
 blk_status_t ret;

 if (sdkp->device->no_write_same)
  return BLK_STS_TARGET;

 BUG_ON(bio_offset(bio) || bio_iovec(bio).bv_len != sdp->sector_size);

 rq->timeout = SD_WRITE_SAME_TIMEOUT;

 if (sdkp->ws16 || lba > 0xffffffff || nr_blocks > 0xffff) {
  cmd->cmd_len = 16;
  cmd->cmnd[0] = WRITE_SAME_16;
  put_unaligned_be64(lba, &cmd->cmnd[2]);
  put_unaligned_be32(nr_blocks, &cmd->cmnd[10]);
 } else {
  cmd->cmd_len = 10;
  cmd->cmnd[0] = WRITE_SAME;
  put_unaligned_be32(lba, &cmd->cmnd[2]);
  put_unaligned_be16(nr_blocks, &cmd->cmnd[7]);
 }

 cmd->transfersize = sdp->sector_size;
 cmd->allowed = SD_MAX_RETRIES;
 rq->__data_len = sdp->sector_size;
 ret = scsi_init_io(cmd);
 rq->__data_len = blk_rq_bytes(rq);

 return ret;
}
