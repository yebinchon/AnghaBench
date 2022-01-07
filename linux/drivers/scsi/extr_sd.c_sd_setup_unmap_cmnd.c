
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef void* u32 ;
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int cmd_len; int* cmnd; unsigned int transfersize; int allowed; struct request* request; struct scsi_device* device; } ;
struct TYPE_2__ {unsigned int bv_len; int bv_page; scalar_t__ bv_offset; } ;
struct request {int timeout; TYPE_1__ special_vec; int rq_flags; } ;
typedef int blk_status_t ;


 int BLK_STS_RESOURCE ;
 int GFP_ATOMIC ;
 int RQF_SPECIAL_PAYLOAD ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 int UNMAP ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int clear_highpage (int ) ;
 int mempool_alloc (int ,int ) ;
 char* page_address (int ) ;
 int put_unaligned_be16 (int,char*) ;
 int put_unaligned_be32 (void*,char*) ;
 int put_unaligned_be64 (void*,char*) ;
 int scsi_init_io (struct scsi_cmnd*) ;
 int sd_page_pool ;
 void* sectors_to_logical (struct scsi_device*,int ) ;

__attribute__((used)) static blk_status_t sd_setup_unmap_cmnd(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdp = cmd->device;
 struct request *rq = cmd->request;
 u64 lba = sectors_to_logical(sdp, blk_rq_pos(rq));
 u32 nr_blocks = sectors_to_logical(sdp, blk_rq_sectors(rq));
 unsigned int data_len = 24;
 char *buf;

 rq->special_vec.bv_page = mempool_alloc(sd_page_pool, GFP_ATOMIC);
 if (!rq->special_vec.bv_page)
  return BLK_STS_RESOURCE;
 clear_highpage(rq->special_vec.bv_page);
 rq->special_vec.bv_offset = 0;
 rq->special_vec.bv_len = data_len;
 rq->rq_flags |= RQF_SPECIAL_PAYLOAD;

 cmd->cmd_len = 10;
 cmd->cmnd[0] = UNMAP;
 cmd->cmnd[8] = 24;

 buf = page_address(rq->special_vec.bv_page);
 put_unaligned_be16(6 + 16, &buf[0]);
 put_unaligned_be16(16, &buf[2]);
 put_unaligned_be64(lba, &buf[8]);
 put_unaligned_be32(nr_blocks, &buf[16]);

 cmd->allowed = SD_MAX_RETRIES;
 cmd->transfersize = data_len;
 rq->timeout = SD_TIMEOUT;

 return scsi_init_io(cmd);
}
