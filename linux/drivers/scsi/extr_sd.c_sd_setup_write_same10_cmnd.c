
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef void* u32 ;
struct scsi_device {void* sector_size; } ;
struct scsi_cmnd {int cmd_len; int* cmnd; void* transfersize; int allowed; struct request* request; struct scsi_device* device; } ;
struct TYPE_2__ {void* bv_len; scalar_t__ bv_offset; int bv_page; } ;
struct request {int timeout; int rq_flags; TYPE_1__ special_vec; } ;
typedef int blk_status_t ;


 int BLK_STS_RESOURCE ;
 int GFP_ATOMIC ;
 int RQF_SPECIAL_PAYLOAD ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 int SD_WRITE_SAME_TIMEOUT ;
 int WRITE_SAME ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int clear_highpage (int ) ;
 int mempool_alloc (int ,int ) ;
 int put_unaligned_be16 (void*,int*) ;
 int put_unaligned_be32 (void*,int*) ;
 int scsi_init_io (struct scsi_cmnd*) ;
 int sd_page_pool ;
 void* sectors_to_logical (struct scsi_device*,int ) ;

__attribute__((used)) static blk_status_t sd_setup_write_same10_cmnd(struct scsi_cmnd *cmd,
  bool unmap)
{
 struct scsi_device *sdp = cmd->device;
 struct request *rq = cmd->request;
 u64 lba = sectors_to_logical(sdp, blk_rq_pos(rq));
 u32 nr_blocks = sectors_to_logical(sdp, blk_rq_sectors(rq));
 u32 data_len = sdp->sector_size;

 rq->special_vec.bv_page = mempool_alloc(sd_page_pool, GFP_ATOMIC);
 if (!rq->special_vec.bv_page)
  return BLK_STS_RESOURCE;
 clear_highpage(rq->special_vec.bv_page);
 rq->special_vec.bv_offset = 0;
 rq->special_vec.bv_len = data_len;
 rq->rq_flags |= RQF_SPECIAL_PAYLOAD;

 cmd->cmd_len = 10;
 cmd->cmnd[0] = WRITE_SAME;
 if (unmap)
  cmd->cmnd[1] = 0x8;
 put_unaligned_be32(lba, &cmd->cmnd[2]);
 put_unaligned_be16(nr_blocks, &cmd->cmnd[7]);

 cmd->allowed = SD_MAX_RETRIES;
 cmd->transfersize = data_len;
 rq->timeout = unmap ? SD_TIMEOUT : SD_WRITE_SAME_TIMEOUT;

 return scsi_init_io(cmd);
}
