
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvmet_fc_tgtport {TYPE_2__* pe; } ;
struct TYPE_11__ {scalar_t__ sg_cnt; int * sg; scalar_t__ transfer_len; int port; int * cqe; int * cmd; } ;
struct TYPE_12__ {int cqe; } ;
struct nvme_fc_cmd_iu {int flags; int sqe; int data_len; } ;
struct nvmet_fc_fcp_iod {scalar_t__ io_dir; TYPE_4__ req; scalar_t__ offset; scalar_t__ data_sg_cnt; int * data_sg; TYPE_3__* queue; TYPE_7__ rspiubuf; struct nvme_fc_cmd_iu cmdiubuf; TYPE_1__* fcpreq; } ;
struct TYPE_10__ {int sqtail; int nvme_sq; int nvme_cq; } ;
struct TYPE_9__ {int port; } ;
struct TYPE_8__ {int done; } ;


 int FCNVME_CMD_FLAGS_READ ;
 int FCNVME_CMD_FLAGS_WRITE ;
 int NVMET_FCOP_WRITEDATA ;
 scalar_t__ NVMET_FCP_NODATA ;
 scalar_t__ NVMET_FCP_READ ;
 scalar_t__ NVMET_FCP_WRITE ;
 int atomic_inc (int *) ;
 scalar_t__ be32_to_cpu (int ) ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ nvme_is_write (int *) ;
 int nvmet_fc_abort_op (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_alloc_tgt_pgs (struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_tgt_fcp_ops ;
 int nvmet_fc_transfer_fcp_data (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*,int ) ;
 int nvmet_fc_xmt_fcp_op_done ;
 int nvmet_req_complete (TYPE_4__*,int) ;
 int nvmet_req_execute (TYPE_4__*) ;
 int nvmet_req_init (TYPE_4__*,int *,int *,int *) ;

__attribute__((used)) static void
nvmet_fc_handle_fcp_rqst(struct nvmet_fc_tgtport *tgtport,
   struct nvmet_fc_fcp_iod *fod)
{
 struct nvme_fc_cmd_iu *cmdiu = &fod->cmdiubuf;
 u32 xfrlen = be32_to_cpu(cmdiu->data_len);
 int ret;





 if (!tgtport->pe)
  goto transport_error;
 fod->fcpreq->done = nvmet_fc_xmt_fcp_op_done;

 if (cmdiu->flags & FCNVME_CMD_FLAGS_WRITE) {
  fod->io_dir = NVMET_FCP_WRITE;
  if (!nvme_is_write(&cmdiu->sqe))
   goto transport_error;
 } else if (cmdiu->flags & FCNVME_CMD_FLAGS_READ) {
  fod->io_dir = NVMET_FCP_READ;
  if (nvme_is_write(&cmdiu->sqe))
   goto transport_error;
 } else {
  fod->io_dir = NVMET_FCP_NODATA;
  if (xfrlen)
   goto transport_error;
 }

 fod->req.cmd = &fod->cmdiubuf.sqe;
 fod->req.cqe = &fod->rspiubuf.cqe;
 fod->req.port = tgtport->pe->port;


 memset(&fod->rspiubuf, 0, sizeof(fod->rspiubuf));

 fod->data_sg = ((void*)0);
 fod->data_sg_cnt = 0;

 ret = nvmet_req_init(&fod->req,
    &fod->queue->nvme_cq,
    &fod->queue->nvme_sq,
    &nvmet_fc_tgt_fcp_ops);
 if (!ret) {


  return;
 }

 fod->req.transfer_len = xfrlen;


 atomic_inc(&fod->queue->sqtail);

 if (fod->req.transfer_len) {
  ret = nvmet_fc_alloc_tgt_pgs(fod);
  if (ret) {
   nvmet_req_complete(&fod->req, ret);
   return;
  }
 }
 fod->req.sg = fod->data_sg;
 fod->req.sg_cnt = fod->data_sg_cnt;
 fod->offset = 0;

 if (fod->io_dir == NVMET_FCP_WRITE) {

  nvmet_fc_transfer_fcp_data(tgtport, fod, NVMET_FCOP_WRITEDATA);
  return;
 }







 nvmet_req_execute(&fod->req);
 return;

transport_error:
 nvmet_fc_abort_op(tgtport, fod);
}
