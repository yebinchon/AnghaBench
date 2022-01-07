
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_vport {int fc_myDID; int fc_nodename; int fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; } ;
struct TYPE_3__ {int elsXmitADISC; } ;
struct lpfc_hba {TYPE_1__ fc_stat; int fc_pref_ALPA; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_4__ {int DID; int nodeName; int portName; int hardAL_PA; } ;
typedef TYPE_2__ ADISC ;


 int ELS_CMD_ADISC ;
 scalar_t__ IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int NLP_ADISC_SND ;
 int be32_to_cpu (int ) ;
 int lpfc_cmpl_els_adisc ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_issue_els_adisc(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
       uint8_t retry)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 ADISC *ap;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;

 cmdsize = (sizeof(uint32_t) + sizeof(ADISC));
 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_ADISC);
 if (!elsiocb)
  return 1;

 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);


 *((uint32_t *) (pcmd)) = ELS_CMD_ADISC;
 pcmd += sizeof(uint32_t);


 ap = (ADISC *) pcmd;
 ap->hardAL_PA = phba->fc_pref_ALPA;
 memcpy(&ap->portName, &vport->fc_portname, sizeof(struct lpfc_name));
 memcpy(&ap->nodeName, &vport->fc_nodename, sizeof(struct lpfc_name));
 ap->DID = be32_to_cpu(vport->fc_myDID);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue ADISC:     did:x%x",
  ndlp->nlp_DID, 0, 0);

 phba->fc_stat.elsXmitADISC++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_adisc;
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_ADISC_SND;
 spin_unlock_irq(shost->host_lock);
 if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) ==
     IOCB_ERROR) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~NLP_ADISC_SND;
  spin_unlock_irq(shost->host_lock);
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
