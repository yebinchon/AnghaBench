
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int fc_portname; int fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; int nlp_prev_state; int nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; } ;
struct TYPE_2__ {int elsXmitLOGO; } ;
struct lpfc_hba {TYPE_1__ fc_stat; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;


 int ELS_CMD_LOGO ;
 int IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int NLP_ISSUE_LOGO ;
 int NLP_LOGO_SND ;
 int NLP_STE_LOGO_ISSUE ;
 int be32_to_cpu (int ) ;
 int lpfc_cmpl_els_logo ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_issue_els_logo(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
      uint8_t retry)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int rc;

 spin_lock_irq(shost->host_lock);
 if (ndlp->nlp_flag & NLP_LOGO_SND) {
  spin_unlock_irq(shost->host_lock);
  return 0;
 }
 spin_unlock_irq(shost->host_lock);

 cmdsize = (2 * sizeof(uint32_t)) + sizeof(struct lpfc_name);
 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_LOGO);
 if (!elsiocb)
  return 1;

 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 *((uint32_t *) (pcmd)) = ELS_CMD_LOGO;
 pcmd += sizeof(uint32_t);


 *((uint32_t *) (pcmd)) = be32_to_cpu(vport->fc_myDID);
 pcmd += sizeof(uint32_t);
 memcpy(pcmd, &vport->fc_portname, sizeof(struct lpfc_name));

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue LOGO:      did:x%x",
  ndlp->nlp_DID, 0, 0);

 phba->fc_stat.elsXmitLOGO++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_logo;
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_LOGO_SND;
 ndlp->nlp_flag &= ~NLP_ISSUE_LOGO;
 spin_unlock_irq(shost->host_lock);
 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);
 if (rc == IOCB_ERROR) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~NLP_LOGO_SND;
  spin_unlock_irq(shost->host_lock);
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }

 spin_lock_irq(shost->host_lock);
 ndlp->nlp_prev_state = ndlp->nlp_state;
 spin_unlock_irq(shost->host_lock);
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_LOGO_ISSUE);
 return 0;
}
