
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvmet_fc_tgtport {int dev; } ;
struct nvmet_fc_tgt_assoc {int dummy; } ;
struct nvmet_fc_ls_iod {int rqstdatalen; struct nvmet_fc_tgt_assoc* assoc; TYPE_4__* lsreq; scalar_t__ rspbuf; scalar_t__ rqstbuf; } ;
struct fcnvme_lsdesc_disconn_cmd {int dummy; } ;
struct fcnvme_lsdesc_assoc_id {int dummy; } ;
struct TYPE_7__ {int ls_cmd; } ;
struct TYPE_6__ {scalar_t__ desc_tag; scalar_t__ desc_len; int association_id; } ;
struct TYPE_5__ {scalar_t__ desc_tag; scalar_t__ desc_len; scalar_t__ scope; } ;
struct fcnvme_ls_disconnect_rqst {scalar_t__ desc_list_len; TYPE_3__ w0; TYPE_2__ associd; TYPE_1__ discon_cmd; } ;
struct fcnvme_ls_disconnect_acc {int dummy; } ;
struct TYPE_8__ {int rsplen; } ;


 scalar_t__ FCNVME_DISCONN_ASSOCIATION ;
 scalar_t__ FCNVME_DISCONN_CONNECTION ;
 int FCNVME_LSDESC_ASSOC_ID ;
 int FCNVME_LSDESC_DISCONN_CMD ;
 int FCNVME_LS_ACC ;
 int FCNVME_LS_DISCONNECT ;
 int FCNVME_RJT_EXP_NONE ;
 int FCNVME_RJT_RC_INV_ASSOC ;
 int FCNVME_RJT_RC_INV_CONN ;
 int FCNVME_RJT_RC_LOGIC ;
 int NVME_FC_MAX_LS_BUFFER_SIZE ;
 int VERR_ASSOC_ID ;
 int VERR_ASSOC_ID_LEN ;
 int VERR_DISCONN_CMD ;
 int VERR_DISCONN_CMD_LEN ;
 int VERR_DISCONN_LEN ;
 int VERR_DISCONN_RQST_LEN ;
 int VERR_DISCONN_SCOPE ;
 int VERR_NO_ASSOC ;
 int VERR_NO_CONN ;
 int be64_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ fcnvme_lsdesc_len (int) ;
 int memset (struct fcnvme_ls_disconnect_acc*,int ,int) ;
 int nvmet_fc_delete_target_assoc (struct nvmet_fc_tgt_assoc*) ;
 struct nvmet_fc_tgt_assoc* nvmet_fc_find_target_assoc (struct nvmet_fc_tgtport*,int ) ;
 int nvmet_fc_format_rjt (struct fcnvme_ls_disconnect_acc*,int ,int ,int ,int ,int ) ;
 int nvmet_fc_format_rsp_hdr (struct fcnvme_ls_disconnect_acc*,int ,scalar_t__,int ) ;
 int nvmet_fc_tgt_a_put (struct nvmet_fc_tgt_assoc*) ;
 int * validation_errors ;

__attribute__((used)) static void
nvmet_fc_ls_disconnect(struct nvmet_fc_tgtport *tgtport,
   struct nvmet_fc_ls_iod *iod)
{
 struct fcnvme_ls_disconnect_rqst *rqst =
   (struct fcnvme_ls_disconnect_rqst *)iod->rqstbuf;
 struct fcnvme_ls_disconnect_acc *acc =
   (struct fcnvme_ls_disconnect_acc *)iod->rspbuf;
 struct nvmet_fc_tgt_assoc *assoc;
 int ret = 0;

 memset(acc, 0, sizeof(*acc));

 if (iod->rqstdatalen < sizeof(struct fcnvme_ls_disconnect_rqst))
  ret = VERR_DISCONN_LEN;
 else if (rqst->desc_list_len !=
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_ls_disconnect_rqst)))
  ret = VERR_DISCONN_RQST_LEN;
 else if (rqst->associd.desc_tag != cpu_to_be32(FCNVME_LSDESC_ASSOC_ID))
  ret = VERR_ASSOC_ID;
 else if (rqst->associd.desc_len !=
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_lsdesc_assoc_id)))
  ret = VERR_ASSOC_ID_LEN;
 else if (rqst->discon_cmd.desc_tag !=
   cpu_to_be32(FCNVME_LSDESC_DISCONN_CMD))
  ret = VERR_DISCONN_CMD;
 else if (rqst->discon_cmd.desc_len !=
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_lsdesc_disconn_cmd)))
  ret = VERR_DISCONN_CMD_LEN;
 else if ((rqst->discon_cmd.scope != FCNVME_DISCONN_ASSOCIATION) &&
   (rqst->discon_cmd.scope != FCNVME_DISCONN_CONNECTION))
  ret = VERR_DISCONN_SCOPE;
 else {

  assoc = nvmet_fc_find_target_assoc(tgtport,
    be64_to_cpu(rqst->associd.association_id));
  iod->assoc = assoc;
  if (!assoc)
   ret = VERR_NO_ASSOC;
 }

 if (ret) {
  dev_err(tgtport->dev,
   "Disconnect LS failed: %s\n",
   validation_errors[ret]);
  iod->lsreq->rsplen = nvmet_fc_format_rjt(acc,
    NVME_FC_MAX_LS_BUFFER_SIZE, rqst->w0.ls_cmd,
    (ret == VERR_NO_ASSOC) ?
     FCNVME_RJT_RC_INV_ASSOC :
     (ret == VERR_NO_CONN) ?
      FCNVME_RJT_RC_INV_CONN :
      FCNVME_RJT_RC_LOGIC,
    FCNVME_RJT_EXP_NONE, 0);
  return;
 }



 iod->lsreq->rsplen = sizeof(*acc);

 nvmet_fc_format_rsp_hdr(acc, FCNVME_LS_ACC,
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_ls_disconnect_acc)),
   FCNVME_LS_DISCONNECT);


 nvmet_fc_tgt_a_put(iod->assoc);

 nvmet_fc_delete_target_assoc(iod->assoc);
}
