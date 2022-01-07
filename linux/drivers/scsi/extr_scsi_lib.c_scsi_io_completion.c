
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; struct request* request; TYPE_1__* device; } ;
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_4__ {int result; } ;
struct TYPE_3__ {struct request_queue* request_queue; } ;


 scalar_t__ BLK_STS_OK ;
 int KERN_INFO ;
 int SCSI_LOG_HLCOMPLETE (int,int ) ;
 int WARN_ONCE (int,char*) ;
 unsigned int blk_rq_bytes (struct request*) ;
 int blk_rq_is_passthrough (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 scalar_t__ likely (int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,unsigned int) ;
 scalar_t__ scsi_end_request (struct request*,scalar_t__,unsigned int) ;
 int scsi_io_completion_action (struct scsi_cmnd*,int) ;
 int scsi_io_completion_nz_result (struct scsi_cmnd*,int,scalar_t__*) ;
 int scsi_io_completion_reprep (struct scsi_cmnd*,struct request_queue*) ;
 scalar_t__ scsi_noretry_cmd (struct scsi_cmnd*) ;
 TYPE_2__* scsi_req (struct request*) ;
 scalar_t__ unlikely (int) ;

void scsi_io_completion(struct scsi_cmnd *cmd, unsigned int good_bytes)
{
 int result = cmd->result;
 struct request_queue *q = cmd->device->request_queue;
 struct request *req = cmd->request;
 blk_status_t blk_stat = BLK_STS_OK;

 if (unlikely(result))
  result = scsi_io_completion_nz_result(cmd, result, &blk_stat);

 if (unlikely(blk_rq_is_passthrough(req))) {



  scsi_req(req)->result = cmd->result;
 }





 SCSI_LOG_HLCOMPLETE(1, scmd_printk(KERN_INFO, cmd,
  "%u sectors total, %d bytes done.\n",
  blk_rq_sectors(req), good_bytes));






 if (likely(blk_rq_bytes(req) > 0 || blk_stat == BLK_STS_OK)) {
  if (likely(!scsi_end_request(req, blk_stat, good_bytes)))
   return;
 }


 if (unlikely(blk_stat && scsi_noretry_cmd(cmd))) {
  if (scsi_end_request(req, blk_stat, blk_rq_bytes(req)))
   WARN_ONCE(1,
       "Bytes remaining after failed, no-retry command");
  return;
 }





 if (likely(result == 0))
  scsi_io_completion_reprep(cmd, q);
 else
  scsi_io_completion_action(cmd, result);
}
