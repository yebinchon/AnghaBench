
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct scsi_disk {int zeroing_mode; scalar_t__ ws16; } ;
struct scsi_device {scalar_t__ no_write_same; } ;
struct scsi_cmnd {struct scsi_device* device; struct request* request; } ;
struct request {int cmd_flags; int rq_disk; } ;
typedef int blk_status_t ;


 int BLK_STS_TARGET ;
 int REQ_NOUNMAP ;


 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 struct scsi_disk* scsi_disk (int ) ;
 int sd_setup_write_same10_cmnd (struct scsi_cmnd*,int) ;
 int sd_setup_write_same16_cmnd (struct scsi_cmnd*,int) ;
 int sectors_to_logical (struct scsi_device*,int ) ;

__attribute__((used)) static blk_status_t sd_setup_write_zeroes_cmnd(struct scsi_cmnd *cmd)
{
 struct request *rq = cmd->request;
 struct scsi_device *sdp = cmd->device;
 struct scsi_disk *sdkp = scsi_disk(rq->rq_disk);
 u64 lba = sectors_to_logical(sdp, blk_rq_pos(rq));
 u32 nr_blocks = sectors_to_logical(sdp, blk_rq_sectors(rq));

 if (!(rq->cmd_flags & REQ_NOUNMAP)) {
  switch (sdkp->zeroing_mode) {
  case 128:
   return sd_setup_write_same16_cmnd(cmd, 1);
  case 129:
   return sd_setup_write_same10_cmnd(cmd, 1);
  }
 }

 if (sdp->no_write_same)
  return BLK_STS_TARGET;

 if (sdkp->ws16 || lba > 0xffffffff || nr_blocks > 0xffff)
  return sd_setup_write_same16_cmnd(cmd, 0);

 return sd_setup_write_same10_cmnd(cmd, 0);
}
