
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct se_cmd {scalar_t__ data_direction; scalar_t__ sam_task_attr; int * t_task_cdb; struct pscsi_plugin_task* priv; int se_dev; int t_data_nents; struct scatterlist* t_data_sg; } ;
struct scatterlist {int dummy; } ;
struct request {int timeout; struct se_cmd* end_io_data; int end_io; } ;
struct pscsi_plugin_task {int * pscsi_cdb; } ;
struct pscsi_dev_virt {TYPE_1__* pdv_sd; } ;
typedef scalar_t__ sense_reason_t ;
struct TYPE_4__ {int retries; int * cmd; int cmd_len; } ;
struct TYPE_3__ {scalar_t__ type; int request_queue; } ;


 scalar_t__ DMA_TO_DEVICE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct request*) ;
 struct pscsi_dev_virt* PSCSI_DEV (int ) ;
 int PS_RETRY ;
 int PS_TIMEOUT_DISK ;
 int PS_TIMEOUT_OTHER ;
 int REQ_OP_SCSI_IN ;
 int REQ_OP_SCSI_OUT ;
 scalar_t__ TCM_HEAD_TAG ;
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_ZBC ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int kfree (struct pscsi_plugin_task*) ;
 struct pscsi_plugin_task* kzalloc (int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int pr_err (char*) ;
 scalar_t__ pscsi_map_sg (struct se_cmd*,struct scatterlist*,int ,struct request*) ;
 int pscsi_req_done ;
 int scsi_command_size (int *) ;
 TYPE_2__* scsi_req (struct request*) ;

__attribute__((used)) static sense_reason_t
pscsi_execute_cmd(struct se_cmd *cmd)
{
 struct scatterlist *sgl = cmd->t_data_sg;
 u32 sgl_nents = cmd->t_data_nents;
 struct pscsi_dev_virt *pdv = PSCSI_DEV(cmd->se_dev);
 struct pscsi_plugin_task *pt;
 struct request *req;
 sense_reason_t ret;





 pt = kzalloc(sizeof(*pt) + scsi_command_size(cmd->t_task_cdb), GFP_KERNEL);
 if (!pt) {
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }
 cmd->priv = pt;

 memcpy(pt->pscsi_cdb, cmd->t_task_cdb,
  scsi_command_size(cmd->t_task_cdb));

 req = blk_get_request(pdv->pdv_sd->request_queue,
   cmd->data_direction == DMA_TO_DEVICE ?
   REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, 0);
 if (IS_ERR(req)) {
  pr_err("PSCSI: blk_get_request() failed\n");
  ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
  goto fail;
 }

 if (sgl) {
  ret = pscsi_map_sg(cmd, sgl, sgl_nents, req);
  if (ret)
   goto fail_put_request;
 }

 req->end_io = pscsi_req_done;
 req->end_io_data = cmd;
 scsi_req(req)->cmd_len = scsi_command_size(pt->pscsi_cdb);
 scsi_req(req)->cmd = &pt->pscsi_cdb[0];
 if (pdv->pdv_sd->type == TYPE_DISK ||
     pdv->pdv_sd->type == TYPE_ZBC)
  req->timeout = PS_TIMEOUT_DISK;
 else
  req->timeout = PS_TIMEOUT_OTHER;
 scsi_req(req)->retries = PS_RETRY;

 blk_execute_rq_nowait(pdv->pdv_sd->request_queue, ((void*)0), req,
   (cmd->sam_task_attr == TCM_HEAD_TAG),
   pscsi_req_done);

 return 0;

fail_put_request:
 blk_put_request(req);
fail:
 kfree(pt);
 return ret;
}
