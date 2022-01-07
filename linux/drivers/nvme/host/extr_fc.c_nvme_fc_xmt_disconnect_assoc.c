
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nvmefc_ls_req {int rqstlen; int rsplen; int timeout; struct fcnvme_ls_disconnect_acc* rspaddr; struct fcnvme_ls_disconnect_rqst* rqstaddr; void* private; } ;
struct nvmefc_ls_req_op {struct nvmefc_ls_req ls_req; } ;
struct nvme_fc_ctrl {scalar_t__ association_id; int rport; TYPE_2__* lport; } ;
struct fcnvme_lsdesc_disconn_cmd {int dummy; } ;
struct fcnvme_lsdesc_assoc_id {int dummy; } ;
struct TYPE_10__ {void* id; int scope; void* desc_len; void* desc_tag; } ;
struct TYPE_9__ {void* association_id; void* desc_len; void* desc_tag; } ;
struct TYPE_8__ {int ls_cmd; } ;
struct fcnvme_ls_disconnect_rqst {TYPE_5__ discon_cmd; TYPE_4__ associd; void* desc_list_len; TYPE_3__ w0; } ;
struct fcnvme_ls_disconnect_acc {int dummy; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int lsrqst_priv_sz; } ;


 int FCNVME_DISCONN_ASSOCIATION ;
 int FCNVME_LSDESC_ASSOC_ID ;
 int FCNVME_LSDESC_DISCONN_CMD ;
 int FCNVME_LS_DISCONNECT ;
 int GFP_KERNEL ;
 int NVME_FC_CONNECT_TIMEOUT_SEC ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (scalar_t__) ;
 void* fcnvme_lsdesc_len (int) ;
 int kfree (struct nvmefc_ls_req_op*) ;
 struct nvmefc_ls_req_op* kzalloc (int,int ) ;
 int nvme_fc_disconnect_assoc_done ;
 int nvme_fc_send_ls_req_async (int ,struct nvmefc_ls_req_op*,int ) ;

__attribute__((used)) static void
nvme_fc_xmt_disconnect_assoc(struct nvme_fc_ctrl *ctrl)
{
 struct fcnvme_ls_disconnect_rqst *discon_rqst;
 struct fcnvme_ls_disconnect_acc *discon_acc;
 struct nvmefc_ls_req_op *lsop;
 struct nvmefc_ls_req *lsreq;
 int ret;

 lsop = kzalloc((sizeof(*lsop) +
    ctrl->lport->ops->lsrqst_priv_sz +
    sizeof(*discon_rqst) + sizeof(*discon_acc)),
   GFP_KERNEL);
 if (!lsop)

  return;

 lsreq = &lsop->ls_req;

 lsreq->private = (void *)&lsop[1];
 discon_rqst = (struct fcnvme_ls_disconnect_rqst *)
   (lsreq->private + ctrl->lport->ops->lsrqst_priv_sz);
 discon_acc = (struct fcnvme_ls_disconnect_acc *)&discon_rqst[1];

 discon_rqst->w0.ls_cmd = FCNVME_LS_DISCONNECT;
 discon_rqst->desc_list_len = cpu_to_be32(
    sizeof(struct fcnvme_lsdesc_assoc_id) +
    sizeof(struct fcnvme_lsdesc_disconn_cmd));

 discon_rqst->associd.desc_tag = cpu_to_be32(FCNVME_LSDESC_ASSOC_ID);
 discon_rqst->associd.desc_len =
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_lsdesc_assoc_id));

 discon_rqst->associd.association_id = cpu_to_be64(ctrl->association_id);

 discon_rqst->discon_cmd.desc_tag = cpu_to_be32(
      FCNVME_LSDESC_DISCONN_CMD);
 discon_rqst->discon_cmd.desc_len =
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_lsdesc_disconn_cmd));
 discon_rqst->discon_cmd.scope = FCNVME_DISCONN_ASSOCIATION;
 discon_rqst->discon_cmd.id = cpu_to_be64(ctrl->association_id);

 lsreq->rqstaddr = discon_rqst;
 lsreq->rqstlen = sizeof(*discon_rqst);
 lsreq->rspaddr = discon_acc;
 lsreq->rsplen = sizeof(*discon_acc);
 lsreq->timeout = NVME_FC_CONNECT_TIMEOUT_SEC;

 ret = nvme_fc_send_ls_req_async(ctrl->rport, lsop,
    nvme_fc_disconnect_assoc_done);
 if (ret)
  kfree(lsop);


 ctrl->association_id = 0;
}
