
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_DID; } ;
struct lpfc_node_rrq {int xritag; int rxid; struct lpfc_nodelist* ndlp; } ;
struct TYPE_7__ {int remoteID; } ;
struct TYPE_9__ {int* ulpWord; TYPE_2__ elsreq64; } ;
struct TYPE_10__ {scalar_t__ ulpStatus; TYPE_4__ un; int ulpTimeout; int ulpIoTag; } ;
struct TYPE_6__ {struct lpfc_iocbq* rsp_iocb; struct lpfc_node_rrq* rrq; } ;
struct lpfc_iocbq {TYPE_5__ iocb; TYPE_1__ context_un; struct lpfc_vport* vport; } ;
struct lpfc_hba {TYPE_3__* pport; } ;
struct TYPE_8__ {int cfg_log_verbose; } ;
typedef TYPE_5__ IOCB_t ;


 scalar_t__ IOSTAT_LS_RJT ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LSRJT_INVALID_CMD ;
 int LSRJT_UNABLE_TPC ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int lpfc_clr_rrq_active (struct lpfc_hba*,int ,struct lpfc_node_rrq*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,int ,scalar_t__,int,...) ;

__attribute__((used)) static void
lpfc_cmpl_els_rrq(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
      struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 IOCB_t *irsp;
 struct lpfc_nodelist *ndlp;
 struct lpfc_node_rrq *rrq;


 rrq = cmdiocb->context_un.rrq;
 cmdiocb->context_un.rsp_iocb = rspiocb;

 irsp = &rspiocb->iocb;
 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "RRQ cmpl:      status:x%x/x%x did:x%x",
  irsp->ulpStatus, irsp->un.ulpWord[4],
  irsp->un.elsreq64.remoteID);

 ndlp = lpfc_findnode_did(vport, irsp->un.elsreq64.remoteID);
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp) || ndlp != rrq->ndlp) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "2882 RRQ completes to NPort x%x "
     "with no ndlp. Data: x%x x%x x%x\n",
     irsp->un.elsreq64.remoteID,
     irsp->ulpStatus, irsp->un.ulpWord[4],
     irsp->ulpIoTag);
  goto out;
 }


 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "2880 RRQ completes to NPort x%x "
    "Data: x%x x%x x%x x%x x%x\n",
    ndlp->nlp_DID, irsp->ulpStatus, irsp->un.ulpWord[4],
    irsp->ulpTimeout, rrq->xritag, rrq->rxid);

 if (irsp->ulpStatus) {


  if (irsp->ulpStatus != IOSTAT_LS_RJT ||
   (((irsp->un.ulpWord[4]) >> 16 != LSRJT_INVALID_CMD) &&
   ((irsp->un.ulpWord[4]) >> 16 != LSRJT_UNABLE_TPC)) ||
   (phba)->pport->cfg_log_verbose & LOG_ELS)
   lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "2881 RRQ failure DID:%06X Status:x%x/x%x\n",
     ndlp->nlp_DID, irsp->ulpStatus,
     irsp->un.ulpWord[4]);
 }
out:
 if (rrq)
  lpfc_clr_rrq_active(phba, rrq->xritag, rrq);
 lpfc_els_free_iocb(phba, cmdiocb);
 return;
}
