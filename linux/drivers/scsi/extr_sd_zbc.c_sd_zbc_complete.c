
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; int asc; } ;
struct scsi_cmnd {int result; struct request* request; } ;
struct request {int rq_flags; } ;


 scalar_t__ ILLEGAL_REQUEST ;
 scalar_t__ REQ_OP_ZONE_RESET ;
 int RQF_QUIET ;
 scalar_t__ req_op (struct request*) ;

void sd_zbc_complete(struct scsi_cmnd *cmd, unsigned int good_bytes,
       struct scsi_sense_hdr *sshdr)
{
 int result = cmd->result;
 struct request *rq = cmd->request;

 if (req_op(rq) == REQ_OP_ZONE_RESET &&
     result &&
     sshdr->sense_key == ILLEGAL_REQUEST &&
     sshdr->asc == 0x24) {





  rq->rq_flags |= RQF_QUIET;
 }
}
