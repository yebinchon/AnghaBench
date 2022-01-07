
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u32 ;
struct lpfc_vport {scalar_t__ cfg_enable_fc4_type; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_type; int nlp_flag; int nlp_DID; int nlp_fc4_type; int nlp_nvme_info; int nlp_fcp_info; struct fc_rport* rport; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct lpfc_hba {scalar_t__ nvmet_support; scalar_t__ nsler; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct fc_rport {int dummy; } ;
struct TYPE_2__ {scalar_t__ prliType; scalar_t__ Retry; scalar_t__ writeXferRdyDis; scalar_t__ targetFunc; scalar_t__ initiatorFunc; } ;
typedef TYPE_1__ PRLI ;


 int FC_RPORT_ROLE_FCP_INITIATOR ;
 int FC_RPORT_ROLE_FCP_TARGET ;
 int FC_RPORT_ROLE_UNKNOWN ;
 int LPFC_DISC_TRC_RPORT ;
 scalar_t__ LPFC_ENABLE_NVME ;
 int NLP_FC4_FCP ;
 int NLP_FC4_NVME ;
 int NLP_FCP_2_DEVICE ;
 int NLP_FCP_INITIATOR ;
 int NLP_FCP_TARGET ;
 int NLP_FIRSTBURST ;
 int NLP_NVME_INITIATOR ;
 int NLP_NVME_NSLER ;
 int NLP_NVME_TARGET ;
 int NLP_STE_UNMAPPED_NODE ;
 scalar_t__ PRLI_FCP_TYPE ;
 scalar_t__ PRLI_NVME_TYPE ;
 int fc_remote_port_rolechg (struct fc_rport*,int ) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;

__attribute__((used)) static void
lpfc_rcv_prli(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
       struct lpfc_iocbq *cmdiocb)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_dmabuf *pcmd;
 uint32_t *lp;
 PRLI *npr;
 struct fc_rport *rport = ndlp->rport;
 u32 roles;

 pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 lp = (uint32_t *) pcmd->virt;
 npr = (PRLI *) ((uint8_t *) lp + sizeof (uint32_t));

 if ((npr->prliType == PRLI_FCP_TYPE) ||
     (npr->prliType == PRLI_NVME_TYPE)) {
  if (npr->initiatorFunc) {
   if (npr->prliType == PRLI_FCP_TYPE)
    ndlp->nlp_type |= NLP_FCP_INITIATOR;
   if (npr->prliType == PRLI_NVME_TYPE)
    ndlp->nlp_type |= NLP_NVME_INITIATOR;
  }
  if (npr->targetFunc) {
   if (npr->prliType == PRLI_FCP_TYPE)
    ndlp->nlp_type |= NLP_FCP_TARGET;
   if (npr->prliType == PRLI_NVME_TYPE)
    ndlp->nlp_type |= NLP_NVME_TARGET;
   if (npr->writeXferRdyDis)
    ndlp->nlp_flag |= NLP_FIRSTBURST;
  }
  if (npr->Retry && ndlp->nlp_type &
     (NLP_FCP_INITIATOR | NLP_FCP_TARGET))
   ndlp->nlp_fcp_info |= NLP_FCP_2_DEVICE;

  if (npr->Retry && phba->nsler &&
      ndlp->nlp_type & (NLP_NVME_INITIATOR | NLP_NVME_TARGET))
   ndlp->nlp_nvme_info |= NLP_NVME_NSLER;







  if (phba->nvmet_support && (npr->prliType == PRLI_NVME_TYPE)) {
   ndlp->nlp_fc4_type |= NLP_FC4_NVME;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
  }
  if (npr->prliType == PRLI_FCP_TYPE)
   ndlp->nlp_fc4_type |= NLP_FC4_FCP;
 }
 if (rport) {

  roles = FC_RPORT_ROLE_UNKNOWN;
  if (ndlp->nlp_type & NLP_FCP_INITIATOR)
   roles |= FC_RPORT_ROLE_FCP_INITIATOR;
  if (ndlp->nlp_type & NLP_FCP_TARGET)
   roles |= FC_RPORT_ROLE_FCP_TARGET;

  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_RPORT,
   "rport rolechg:   role:x%x did:x%x flg:x%x",
   roles, ndlp->nlp_DID, ndlp->nlp_flag);

  if (vport->cfg_enable_fc4_type != LPFC_ENABLE_NVME)
   fc_remote_port_rolechg(rport, roles);
 }
}
