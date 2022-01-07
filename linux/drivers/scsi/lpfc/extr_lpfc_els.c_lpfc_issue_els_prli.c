
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
typedef int u32 ;
struct lpfc_vport {int fc_flag; int fc_prli_sent; scalar_t__ cfg_first_burst_size; scalar_t__ nvmei_support; struct lpfc_hba* phba; } ;
struct lpfc_nvme_prli {void* word4; void* word1; } ;
struct lpfc_nodelist {int nlp_fc4_type; int nlp_type; int nlp_flag; int fc4_prli_sent; int nlp_DID; scalar_t__ nvme_fb_size; int nlp_fcp_info; } ;
struct lpfc_iocbq {int iocb_cmpl; int iocb_flag; scalar_t__ context2; } ;
struct TYPE_7__ {int elsXmitPRLI; } ;
struct TYPE_5__ {int feaLevelHigh; } ;
struct TYPE_6__ {TYPE_1__ rev; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_3__ fc_stat; scalar_t__ nvmet_support; scalar_t__ cfg_nvme_enable_fb; scalar_t__ nsler; TYPE_2__ vpd; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_8__ {int ConfmComplAllowed; int Retry; int TaskRetryIdReq; int estabImagePair; int readXferRdyDis; int writeXferRdyDis; int initiatorFunc; int prliType; } ;
typedef TYPE_4__ PRLI ;


 void* ELS_CMD_NVMEPRLI ;
 void* ELS_CMD_PRLI ;
 int FC_RSCN_MODE ;
 scalar_t__ IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int LPFC_PRLI_FCP_REQ ;
 int LPFC_PRLI_NVME_REQ ;
 scalar_t__ LPFC_SLI_REV3 ;
 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_EVT_DEVICE_RM ;
 int NLP_FC4_FCP ;
 int NLP_FC4_NVME ;
 int NLP_FCP_2_DEVICE ;
 int NLP_FCP_INITIATOR ;
 int NLP_FCP_TARGET ;
 int NLP_FIRSTBURST ;
 int NLP_NPR_2B_DISC ;
 int NLP_NVME_INITIATOR ;
 int NLP_NVME_TARGET ;
 int NLP_PRLI_SND ;
 int PRLI_FCP_TYPE ;
 int PRLI_NVME_TYPE ;
 int bf_set (int ,struct lpfc_nvme_prli*,int) ;
 void* cpu_to_be32 (void*) ;
 int lpfc_cmpl_els_prli ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_disc_state_machine (struct lpfc_vport*,struct lpfc_nodelist*,int *,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memset (int *,int ,int) ;
 int prli_conf ;
 int prli_disc ;
 int prli_estabImagePair ;
 int prli_fba ;
 int prli_init ;
 int prli_nsler ;
 int prli_tgt ;
 int prli_type_code ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_issue_els_prli(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
      uint8_t retry)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 PRLI *npr;
 struct lpfc_nvme_prli *npr_nvme;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;
 u32 local_nlp_type, elscmd;







 if (phba->sli_rev == LPFC_SLI_REV4 &&
     vport->fc_flag & FC_RSCN_MODE &&
     vport->nvmei_support)
  ndlp->nlp_fc4_type |= NLP_FC4_NVME;
 local_nlp_type = ndlp->nlp_fc4_type;




 ndlp->nlp_type &= ~(NLP_FCP_TARGET | NLP_FCP_INITIATOR);
 ndlp->nlp_type &= ~(NLP_NVME_TARGET | NLP_NVME_INITIATOR);
 ndlp->nlp_fcp_info &= ~NLP_FCP_2_DEVICE;
 ndlp->nlp_flag &= ~(NLP_FIRSTBURST | NLP_NPR_2B_DISC);
 ndlp->nvme_fb_size = 0;

 send_next_prli:
 if (local_nlp_type & NLP_FC4_FCP) {

  cmdsize = (sizeof(uint32_t) + sizeof(PRLI));
  elscmd = ELS_CMD_PRLI;
 } else if (local_nlp_type & NLP_FC4_NVME) {

  cmdsize = (sizeof(uint32_t) + sizeof(struct lpfc_nvme_prli));
  elscmd = ELS_CMD_NVMEPRLI;
 } else {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "3083 Unknown FC_TYPE x%x ndlp x%06x\n",
     ndlp->nlp_fc4_type, ndlp->nlp_DID);
  return 1;
 }




 if (phba->sli_rev == LPFC_SLI_REV3 &&
     ndlp->nlp_fc4_type == NLP_FC4_NVME) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
     "3088 Rport fc4 type 0x%x not supported by SLI3 adapter\n",
     ndlp->nlp_type);
  lpfc_disc_state_machine(vport, ndlp, ((void*)0), NLP_EVT_DEVICE_RM);
  return 1;
 }

 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp,
         ndlp->nlp_DID, elscmd);
 if (!elsiocb)
  return 1;

 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);


 memset(pcmd, 0, cmdsize);

 if (local_nlp_type & NLP_FC4_FCP) {





  *((uint32_t *)(pcmd)) = ELS_CMD_PRLI;
  pcmd += sizeof(uint32_t);
  npr = (PRLI *)pcmd;





  if (phba->vpd.rev.feaLevelHigh >= 0x02) {
   npr->ConfmComplAllowed = 1;
   npr->Retry = 1;
   npr->TaskRetryIdReq = 1;
  }
  npr->estabImagePair = 1;
  npr->readXferRdyDis = 1;
  if (vport->cfg_first_burst_size)
   npr->writeXferRdyDis = 1;


  npr->prliType = PRLI_FCP_TYPE;
  npr->initiatorFunc = 1;
  elsiocb->iocb_flag |= LPFC_PRLI_FCP_REQ;


  local_nlp_type &= ~NLP_FC4_FCP;
 } else if (local_nlp_type & NLP_FC4_NVME) {




  *((uint32_t *)(pcmd)) = ELS_CMD_NVMEPRLI;
  pcmd += sizeof(uint32_t);
  npr_nvme = (struct lpfc_nvme_prli *)pcmd;
  bf_set(prli_type_code, npr_nvme, PRLI_NVME_TYPE);
  bf_set(prli_estabImagePair, npr_nvme, 0);
  if (phba->nsler) {
   bf_set(prli_nsler, npr_nvme, 1);
   bf_set(prli_conf, npr_nvme, 1);
  }


  if ((phba->cfg_nvme_enable_fb) &&
      !phba->nvmet_support)
   bf_set(prli_fba, npr_nvme, 1);

  if (phba->nvmet_support) {
   bf_set(prli_tgt, npr_nvme, 1);
   bf_set(prli_disc, npr_nvme, 1);
  } else {
   bf_set(prli_init, npr_nvme, 1);
   bf_set(prli_conf, npr_nvme, 1);
  }

  npr_nvme->word1 = cpu_to_be32(npr_nvme->word1);
  npr_nvme->word4 = cpu_to_be32(npr_nvme->word4);
  elsiocb->iocb_flag |= LPFC_PRLI_NVME_REQ;


  local_nlp_type &= ~NLP_FC4_NVME;
 }

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue PRLI:      did:x%x",
  ndlp->nlp_DID, 0, 0);

 phba->fc_stat.elsXmitPRLI++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_prli;
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_PRLI_SND;





 vport->fc_prli_sent++;
 ndlp->fc4_prli_sent++;
 spin_unlock_irq(shost->host_lock);
 if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) ==
     IOCB_ERROR) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~NLP_PRLI_SND;
  spin_unlock_irq(shost->host_lock);
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }





 if (phba->sli_rev == LPFC_SLI_REV4 &&
     local_nlp_type & (NLP_FC4_FCP | NLP_FC4_NVME))
  goto send_next_prli;

 return 0;
}
