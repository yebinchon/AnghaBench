
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_sense_hdr {int dummy; } ;
struct scsi_request {unsigned char* cmd; int retries; unsigned int resid_len; unsigned char const* sense; int result; scalar_t__ sense_len; int cmd_len; } ;
struct scsi_device {int request_queue; } ;
struct request {int timeout; int rq_flags; int q; int cmd_flags; } ;
typedef int req_flags_t ;


 int BLK_MQ_REQ_PREEMPT ;
 int COMMAND_SIZE (unsigned char const) ;
 int DMA_TO_DEVICE ;
 int DRIVER_ERROR ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct request*) ;
 int REQ_OP_SCSI_IN ;
 int REQ_OP_SCSI_OUT ;
 int RQF_QUIET ;
 int SCSI_SENSE_BUFFERSIZE ;
 int blk_execute_rq (int ,int *,struct request*,int) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 scalar_t__ blk_rq_map_kern (int ,struct request*,void*,unsigned int,int ) ;
 int memcpy (unsigned char*,unsigned char const*,int ) ;
 int memset (void*,int ,unsigned int) ;
 int scsi_normalize_sense (unsigned char const*,scalar_t__,struct scsi_sense_hdr*) ;
 struct scsi_request* scsi_req (struct request*) ;
 scalar_t__ unlikely (int) ;

int __scsi_execute(struct scsi_device *sdev, const unsigned char *cmd,
   int data_direction, void *buffer, unsigned bufflen,
   unsigned char *sense, struct scsi_sense_hdr *sshdr,
   int timeout, int retries, u64 flags, req_flags_t rq_flags,
   int *resid)
{
 struct request *req;
 struct scsi_request *rq;
 int ret = DRIVER_ERROR << 24;

 req = blk_get_request(sdev->request_queue,
   data_direction == DMA_TO_DEVICE ?
   REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, BLK_MQ_REQ_PREEMPT);
 if (IS_ERR(req))
  return ret;
 rq = scsi_req(req);

 if (bufflen && blk_rq_map_kern(sdev->request_queue, req,
     buffer, bufflen, GFP_NOIO))
  goto out;

 rq->cmd_len = COMMAND_SIZE(cmd[0]);
 memcpy(rq->cmd, cmd, rq->cmd_len);
 rq->retries = retries;
 req->timeout = timeout;
 req->cmd_flags |= flags;
 req->rq_flags |= rq_flags | RQF_QUIET;




 blk_execute_rq(req->q, ((void*)0), req, 1);







 if (unlikely(rq->resid_len > 0 && rq->resid_len <= bufflen))
  memset(buffer + (bufflen - rq->resid_len), 0, rq->resid_len);

 if (resid)
  *resid = rq->resid_len;
 if (sense && rq->sense_len)
  memcpy(sense, rq->sense, SCSI_SENSE_BUFFERSIZE);
 if (sshdr)
  scsi_normalize_sense(rq->sense, rq->sense_len, sshdr);
 ret = rq->result;
 out:
 blk_put_request(req);

 return ret;
}
