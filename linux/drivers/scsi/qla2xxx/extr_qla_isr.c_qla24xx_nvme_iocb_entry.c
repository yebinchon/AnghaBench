
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct sts_entry_24xx {int ox_id; int residual_len; int nvme_rsp_pyld_len; int nvme_ersp_data; int state_flags; int comp_status; } ;
struct TYPE_13__ {int comp_status; int aen_op; int rsp_pyld_len; struct nvmefc_fcp_req* desc; } ;
struct TYPE_14__ {TYPE_4__ nvme; } ;
struct srb_iocb {TYPE_5__ u; } ;
struct req_que {int dummy; } ;
struct nvmefc_fcp_req {scalar_t__ transferred_length; scalar_t__ payload_length; scalar_t__ rspaddr; } ;
struct TYPE_10__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_15__ {int (* done ) (TYPE_6__*,int) ;int handle; int name; TYPE_3__* vha; TYPE_7__* fcport; TYPE_1__ u; } ;
typedef TYPE_6__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_16__ {int nvme_flag; int vha; } ;
typedef TYPE_7__ fc_port_t ;
struct TYPE_12__ {TYPE_2__* hw; } ;
struct TYPE_11__ {int nvme_active_aen_cnt; } ;
 int NVME_FLAG_RESETTING ;
 int QLA_ABORTED ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SF_FCP_RSP_DMA ;
 int SF_NVME_ERSP ;
 int atomic_dec (int *) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int ql_log (int ,int ,int,char*,int ,int,...) ;
 int ql_log_warn ;
 int stub1 (TYPE_6__*,int) ;
 int swab32 (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qla24xx_nvme_iocb_entry(scsi_qla_host_t *vha, struct req_que *req,
    void *tsk, srb_t *sp)
{
 fc_port_t *fcport;
 struct srb_iocb *iocb;
 struct sts_entry_24xx *sts = (struct sts_entry_24xx *)tsk;
 uint16_t state_flags;
 struct nvmefc_fcp_req *fd;
 uint16_t ret = QLA_SUCCESS;
 uint16_t comp_status = le16_to_cpu(sts->comp_status);

 iocb = &sp->u.iocb_cmd;
 fcport = sp->fcport;
 iocb->u.nvme.comp_status = comp_status;
 state_flags = le16_to_cpu(sts->state_flags);
 fd = iocb->u.nvme.desc;

 if (unlikely(iocb->u.nvme.aen_op))
  atomic_dec(&sp->vha->hw->nvme_active_aen_cnt);
 if (!(state_flags & (SF_FCP_RSP_DMA | SF_NVME_ERSP))) {
  iocb->u.nvme.rsp_pyld_len = 0;
 } else if ((state_flags & SF_FCP_RSP_DMA)) {
  iocb->u.nvme.rsp_pyld_len = le16_to_cpu(sts->nvme_rsp_pyld_len);
 } else if (state_flags & SF_NVME_ERSP) {
  uint32_t *inbuf, *outbuf;
  uint16_t iter;

  inbuf = (uint32_t *)&sts->nvme_ersp_data;
  outbuf = (uint32_t *)fd->rspaddr;
  iocb->u.nvme.rsp_pyld_len = le16_to_cpu(sts->nvme_rsp_pyld_len);
  iter = iocb->u.nvme.rsp_pyld_len >> 2;
  for (; iter; iter--)
   *outbuf++ = swab32(*inbuf++);
 } else {
     ql_log(ql_log_warn, fcport->vha, 0x503a,
  "NVME-%s error. Unhandled state_flags of %x\n",
  sp->name, state_flags);
 }

 fd->transferred_length = fd->payload_length -
     le32_to_cpu(sts->residual_len);

 if (unlikely(comp_status != 133))
  ql_log(ql_log_warn, fcport->vha, 0x5060,
     "NVME-%s ERR Handling - hdl=%x status(%x) tr_len:%x resid=%x  ox_id=%x\n",
     sp->name, sp->handle, comp_status,
     fd->transferred_length, le32_to_cpu(sts->residual_len),
     sts->ox_id);





 switch (comp_status) {
 case 133:
  break;

 case 128:
 case 129:
 case 130:
  fcport->nvme_flag |= NVME_FLAG_RESETTING;

 case 134:
 case 131:
  fd->transferred_length = 0;
  iocb->u.nvme.rsp_pyld_len = 0;
  ret = QLA_ABORTED;
  break;
 case 132:
  break;
 default:
  ret = QLA_FUNCTION_FAILED;
  break;
 }
 sp->done(sp, ret);
}
