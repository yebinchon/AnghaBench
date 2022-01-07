
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_lnk_stat {int link_events; int error_frames; int invalid_crc_count; int invalid_tx_word_count; int prim_seq_protocol_err_count; int loss_of_signal_count; int loss_of_sync_count; int link_failure_count; } ;
struct lpfc_sli {int sli_flag; int stats_start; struct lpfc_lnk_stat lnk_stat_offsets; } ;
struct lpfc_hba {int fc_ratov; int hba_flag; int link_events; int fc_eventTag; int mbox_mem_pool; struct lpfc_sli sli; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_12__ {int crcCnt; int invalidXmitWord; int primSeqErrCnt; int lossSignalCnt; int lossSyncCnt; int linkFailureCnt; } ;
struct TYPE_13__ {int* varWords; TYPE_2__ varRdLnk; } ;
struct TYPE_14__ {TYPE_3__ un; void* mbxOwner; int mbxCommand; } ;
struct TYPE_11__ {TYPE_4__ mb; } ;
struct TYPE_15__ {struct lpfc_vport* vport; int * ctx_buf; TYPE_1__ u; } ;
typedef TYPE_4__ MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int FC_OFFLINE_MODE ;
 int GFP_KERNEL ;
 int HBA_FCOE_MODE ;
 int LPFC_BLOCK_MGMT_IO ;
 int LPFC_SLI_ACTIVE ;
 int MBX_POLL ;
 int MBX_READ_LNK_STAT ;
 int MBX_READ_STATUS ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 void* OWN_HOST ;
 int ktime_get_seconds () ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_5__*,int ) ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,TYPE_5__*,int) ;
 TYPE_5__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_5__*,int ) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static void
lpfc_reset_stats(struct Scsi_Host *shost)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_sli *psli = &phba->sli;
 struct lpfc_lnk_stat *lso = &psli->lnk_stat_offsets;
 LPFC_MBOXQ_t *pmboxq;
 MAILBOX_t *pmb;
 int rc = 0;

 if (phba->sli.sli_flag & LPFC_BLOCK_MGMT_IO)
  return;

 pmboxq = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmboxq)
  return;
 memset(pmboxq, 0, sizeof(LPFC_MBOXQ_t));

 pmb = &pmboxq->u.mb;
 pmb->mbxCommand = MBX_READ_STATUS;
 pmb->mbxOwner = OWN_HOST;
 pmb->un.varWords[0] = 0x1;
 pmboxq->ctx_buf = ((void*)0);
 pmboxq->vport = vport;

 if ((vport->fc_flag & FC_OFFLINE_MODE) ||
  (!(psli->sli_flag & LPFC_SLI_ACTIVE)))
  rc = lpfc_sli_issue_mbox(phba, pmboxq, MBX_POLL);
 else
  rc = lpfc_sli_issue_mbox_wait(phba, pmboxq, phba->fc_ratov * 2);

 if (rc != MBX_SUCCESS) {
  if (rc != MBX_TIMEOUT)
   mempool_free(pmboxq, phba->mbox_mem_pool);
  return;
 }

 memset(pmboxq, 0, sizeof(LPFC_MBOXQ_t));
 pmb->mbxCommand = MBX_READ_LNK_STAT;
 pmb->mbxOwner = OWN_HOST;
 pmboxq->ctx_buf = ((void*)0);
 pmboxq->vport = vport;

 if ((vport->fc_flag & FC_OFFLINE_MODE) ||
     (!(psli->sli_flag & LPFC_SLI_ACTIVE)))
  rc = lpfc_sli_issue_mbox(phba, pmboxq, MBX_POLL);
 else
  rc = lpfc_sli_issue_mbox_wait(phba, pmboxq, phba->fc_ratov * 2);

 if (rc != MBX_SUCCESS) {
  if (rc != MBX_TIMEOUT)
   mempool_free( pmboxq, phba->mbox_mem_pool);
  return;
 }

 lso->link_failure_count = pmb->un.varRdLnk.linkFailureCnt;
 lso->loss_of_sync_count = pmb->un.varRdLnk.lossSyncCnt;
 lso->loss_of_signal_count = pmb->un.varRdLnk.lossSignalCnt;
 lso->prim_seq_protocol_err_count = pmb->un.varRdLnk.primSeqErrCnt;
 lso->invalid_tx_word_count = pmb->un.varRdLnk.invalidXmitWord;
 lso->invalid_crc_count = pmb->un.varRdLnk.crcCnt;
 lso->error_frames = pmb->un.varRdLnk.crcCnt;
 if (phba->hba_flag & HBA_FCOE_MODE)
  lso->link_events = (phba->link_events >> 1);
 else
  lso->link_events = (phba->fc_eventTag >> 1);

 psli->stats_start = ktime_get_seconds();

 mempool_free(pmboxq, phba->mbox_mem_pool);

 return;
}
