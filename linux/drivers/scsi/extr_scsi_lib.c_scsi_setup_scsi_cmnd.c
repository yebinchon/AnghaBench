
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct scsi_cmnd {int allowed; int transfersize; int cmnd; int cmd_len; int sdb; } ;
struct request {scalar_t__ bio; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_2__ {int retries; int cmd; int cmd_len; } ;


 scalar_t__ BLK_STS_OK ;
 int BUG_ON (int ) ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 int memset (int *,int ,int) ;
 scalar_t__ scsi_init_io (struct scsi_cmnd*) ;
 TYPE_1__* scsi_req (struct request*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static blk_status_t scsi_setup_scsi_cmnd(struct scsi_device *sdev,
  struct request *req)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(req);







 if (req->bio) {
  blk_status_t ret = scsi_init_io(cmd);
  if (unlikely(ret != BLK_STS_OK))
   return ret;
 } else {
  BUG_ON(blk_rq_bytes(req));

  memset(&cmd->sdb, 0, sizeof(cmd->sdb));
 }

 cmd->cmd_len = scsi_req(req)->cmd_len;
 cmd->cmnd = scsi_req(req)->cmd;
 cmd->transfersize = blk_rq_bytes(req);
 cmd->allowed = scsi_req(req)->retries;
 return BLK_STS_OK;
}
