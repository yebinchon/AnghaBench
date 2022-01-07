
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct serv_parm {int portName; int nodeName; } ;
struct TYPE_7__ {scalar_t__ vendorUnique; int lsRjtRsnCodeExp; int lsRjtRsnCode; scalar_t__ lsRjtRsvd0; } ;
struct TYPE_8__ {int lsRjtError; TYPE_2__ b; } ;
struct ls_rjt {TYPE_3__ un; } ;
struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nodelist {int nlp_type; int nlp_state; int nlp_prev_state; int nlp_last_elscmd; int nlp_flag; int nlp_delayfunc; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_9__ {scalar_t__ ulpStatus; } ;
struct lpfc_iocbq {scalar_t__ drvrTimeout; TYPE_4__ iocb; scalar_t__ context2; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_10__ {int portName; int nodeName; } ;
struct TYPE_6__ {scalar_t__ sli_rev; } ;
typedef TYPE_4__ IOCB_t ;
typedef TYPE_5__ ADISC ;


 scalar_t__ ELS_CMD_ADISC ;
 int ELS_CMD_PLOGI ;
 int GFP_KERNEL ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LSEXP_SPARM_OPTIONS ;
 int LSRJT_UNABLE_TPC ;
 int NLP_DELAY_TMO ;
 int NLP_FCP_TARGET ;
 int NLP_NVME_TARGET ;
 int NLP_STE_MAPPED_NODE ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_UNMAPPED_NODE ;
 scalar_t__ jiffies ;
 struct lpfc_iocbq* kmalloc (int,int ) ;
 scalar_t__ lpfc_check_adisc (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_name*,struct lpfc_name*) ;
 int lpfc_els_rsp_acc (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_els_rsp_adisc_acc (struct lpfc_vport*,struct lpfc_iocbq*,struct lpfc_nodelist*) ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_mbx_cmpl_resume_rpi ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_resume_rpi (struct lpfc_nodelist*,int ,struct lpfc_iocbq*) ;
 int memcpy (int *,int *,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
lpfc_rcv_padisc(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
  struct lpfc_iocbq *cmdiocb)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_iocbq *elsiocb;
 struct lpfc_dmabuf *pcmd;
 struct serv_parm *sp;
 struct lpfc_name *pnn, *ppn;
 struct ls_rjt stat;
 ADISC *ap;
 IOCB_t *icmd;
 uint32_t *lp;
 uint32_t cmd;

 pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 lp = (uint32_t *) pcmd->virt;

 cmd = *lp++;
 if (cmd == ELS_CMD_ADISC) {
  ap = (ADISC *) lp;
  pnn = (struct lpfc_name *) & ap->nodeName;
  ppn = (struct lpfc_name *) & ap->portName;
 } else {
  sp = (struct serv_parm *) lp;
  pnn = (struct lpfc_name *) & sp->nodeName;
  ppn = (struct lpfc_name *) & sp->portName;
 }

 icmd = &cmdiocb->iocb;
 if (icmd->ulpStatus == 0 && lpfc_check_adisc(vport, ndlp, pnn, ppn)) {






  if (vport->phba->sli_rev == LPFC_SLI_REV4) {
   elsiocb = kmalloc(sizeof(struct lpfc_iocbq),
    GFP_KERNEL);
   if (elsiocb) {


    memcpy((uint8_t *)elsiocb, (uint8_t *)cmdiocb,
     sizeof(struct lpfc_iocbq));


    elsiocb->drvrTimeout = cmd;

    lpfc_sli4_resume_rpi(ndlp,
     lpfc_mbx_cmpl_resume_rpi, elsiocb);
    goto out;
   }
  }

  if (cmd == ELS_CMD_ADISC) {
   lpfc_els_rsp_adisc_acc(vport, cmdiocb, ndlp);
  } else {
   lpfc_els_rsp_acc(vport, ELS_CMD_PLOGI, cmdiocb,
    ndlp, ((void*)0));
  }
out:

  if (ndlp->nlp_type & (NLP_FCP_TARGET | NLP_NVME_TARGET))
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_MAPPED_NODE);
  else
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);

  return 1;
 }

 stat.un.b.lsRjtRsvd0 = 0;
 stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
 stat.un.b.lsRjtRsnCodeExp = LSEXP_SPARM_OPTIONS;
 stat.un.b.vendorUnique = 0;
 lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp, ((void*)0));


 mod_timer(&ndlp->nlp_delayfunc, jiffies + msecs_to_jiffies(1000));

 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_DELAY_TMO;
 spin_unlock_irq(shost->host_lock);
 ndlp->nlp_last_elscmd = ELS_CMD_PLOGI;
 ndlp->nlp_prev_state = ndlp->nlp_state;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
 return 0;
}
