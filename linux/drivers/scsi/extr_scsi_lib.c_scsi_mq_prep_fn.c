
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_device {struct Scsi_Host* host; } ;
struct scsi_data_buffer {int dummy; } ;
struct TYPE_9__ {struct scatterlist* sgl; } ;
struct TYPE_10__ {TYPE_3__ table; } ;
struct scsi_cmnd {TYPE_6__* prot_sdb; TYPE_4__ sdb; int prot_op; int tag; struct request* request; } ;
struct scatterlist {int dummy; } ;
struct request {int tag; TYPE_1__* q; } ;
struct Scsi_Host {TYPE_2__* hostt; } ;
typedef int blk_status_t ;
struct TYPE_11__ {struct scatterlist* sgl; } ;
struct TYPE_12__ {TYPE_5__ table; } ;
struct TYPE_8__ {int cmd_size; } ;
struct TYPE_7__ {struct scsi_device* queuedata; } ;


 int SCSI_PROT_NORMAL ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int blk_mq_start_request (struct request*) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ scsi_host_get_prot (struct Scsi_Host*) ;
 int scsi_init_command (struct scsi_device*,struct scsi_cmnd*) ;
 int scsi_setup_cmnd (struct scsi_device*,struct request*) ;

__attribute__((used)) static blk_status_t scsi_mq_prep_fn(struct request *req)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(req);
 struct scsi_device *sdev = req->q->queuedata;
 struct Scsi_Host *shost = sdev->host;
 struct scatterlist *sg;

 scsi_init_command(sdev, cmd);

 cmd->request = req;
 cmd->tag = req->tag;
 cmd->prot_op = SCSI_PROT_NORMAL;

 sg = (void *)cmd + sizeof(struct scsi_cmnd) + shost->hostt->cmd_size;
 cmd->sdb.table.sgl = sg;

 if (scsi_host_get_prot(shost)) {
  memset(cmd->prot_sdb, 0, sizeof(struct scsi_data_buffer));

  cmd->prot_sdb->table.sgl =
   (struct scatterlist *)(cmd->prot_sdb + 1);
 }

 blk_mq_start_request(req);

 return scsi_setup_cmnd(sdev, req);
}
