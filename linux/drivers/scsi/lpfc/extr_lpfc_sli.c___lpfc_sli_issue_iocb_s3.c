
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_14__ {int iocb_cmd_delay; } ;
struct lpfc_sli_ring {int flag; scalar_t__ ringno; TYPE_7__ stats; } ;
struct TYPE_8__ {int Type; int Rctl; } ;
struct TYPE_9__ {TYPE_1__ hcsw; } ;
struct TYPE_10__ {TYPE_2__ w5; } ;
struct TYPE_11__ {TYPE_3__ genreq64; } ;
struct TYPE_12__ {int ulpCommand; TYPE_4__ un; } ;
struct lpfc_iocbq {int * iocb_cmpl; TYPE_5__ iocb; int vport; } ;
struct TYPE_13__ {int sli_flag; struct lpfc_sli_ring* sli3_ring; } ;
struct lpfc_hba {int hba_flag; scalar_t__ link_state; TYPE_6__ sli; int pcidev; int hbalock; } ;
typedef int IOCB_t ;


 int CMD_ABORT_XRI_CN ;







 int DEFER_ERATT ;
 int FC_RCTL_DD_UNSOL_CMD ;
 int IOCB_BUSY ;
 int IOCB_ERROR ;
 int IOCB_SUCCESS ;
 int KERN_ERR ;
 int LOG_SLI ;
 int LOG_VPORT ;
 scalar_t__ LPFC_FCP_RING ;
 scalar_t__ LPFC_LINK_DOWN ;
 int LPFC_MENLO_MAINT ;
 int LPFC_PROCESS_LA ;
 int LPFC_STOP_IOCB_EVENT ;
 int MENLO_TRANSPORT_TYPE ;
 size_t SLI_IOCB_RET_IOCB ;
 int __lpfc_sli_ringtx_put (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ;
 int dump_stack () ;
 int lockdep_assert_held (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int) ;
 struct lpfc_iocbq* lpfc_sli_next_iocb (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq**) ;
 int * lpfc_sli_next_iocb_slot (struct lpfc_hba*,struct lpfc_sli_ring*) ;
 int lpfc_sli_submit_iocb (struct lpfc_hba*,struct lpfc_sli_ring*,int *,struct lpfc_iocbq*) ;
 int lpfc_sli_update_full_ring (struct lpfc_hba*,struct lpfc_sli_ring*) ;
 int lpfc_sli_update_ring (struct lpfc_hba*,struct lpfc_sli_ring*) ;
 int pci_channel_offline (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
__lpfc_sli_issue_iocb_s3(struct lpfc_hba *phba, uint32_t ring_number,
      struct lpfc_iocbq *piocb, uint32_t flag)
{
 struct lpfc_iocbq *nextiocb;
 IOCB_t *iocb;
 struct lpfc_sli_ring *pring = &phba->sli.sli3_ring[ring_number];

 lockdep_assert_held(&phba->hbalock);

 if (piocb->iocb_cmpl && (!piocb->vport) &&
    (piocb->iocb.ulpCommand != CMD_ABORT_XRI_CN) &&
    (piocb->iocb.ulpCommand != 134)) {
  lpfc_printf_log(phba, KERN_ERR,
    LOG_SLI | LOG_VPORT,
    "1807 IOCB x%x failed. No vport\n",
    piocb->iocb.ulpCommand);
  dump_stack();
  return IOCB_ERROR;
 }



 if (unlikely(pci_channel_offline(phba->pcidev)))
  return IOCB_ERROR;


 if (unlikely(phba->hba_flag & DEFER_ERATT))
  return IOCB_ERROR;




 if (unlikely(phba->link_state < LPFC_LINK_DOWN))
  return IOCB_ERROR;





 if (unlikely(pring->flag & LPFC_STOP_IOCB_EVENT))
  goto iocb_busy;

 if (unlikely(phba->link_state == LPFC_LINK_DOWN)) {




  switch (piocb->iocb.ulpCommand) {
  case 131:
  case 130:
   if (!(phba->sli.sli_flag & LPFC_MENLO_MAINT) ||
    (piocb->iocb.un.genreq64.w5.hcsw.Rctl !=
     FC_RCTL_DD_UNSOL_CMD) ||
    (piocb->iocb.un.genreq64.w5.hcsw.Type !=
     MENLO_TRANSPORT_TYPE))

    goto iocb_busy;
   break;
  case 128:
  case 129:




   if (piocb->iocb_cmpl)
    piocb->iocb_cmpl = ((void*)0);

  case 132:
  case 134:
  case 133:
   break;
  default:
   goto iocb_busy;
  }





 } else if (unlikely(pring->ringno == LPFC_FCP_RING &&
       !(phba->sli.sli_flag & LPFC_PROCESS_LA))) {
  goto iocb_busy;
 }

 while ((iocb = lpfc_sli_next_iocb_slot(phba, pring)) &&
        (nextiocb = lpfc_sli_next_iocb(phba, pring, &piocb)))
  lpfc_sli_submit_iocb(phba, pring, iocb, nextiocb);

 if (iocb)
  lpfc_sli_update_ring(phba, pring);
 else
  lpfc_sli_update_full_ring(phba, pring);

 if (!piocb)
  return IOCB_SUCCESS;

 goto out_busy;

 iocb_busy:
 pring->stats.iocb_cmd_delay++;

 out_busy:

 if (!(flag & SLI_IOCB_RET_IOCB)) {
  __lpfc_sli_ringtx_put(phba, pring, piocb);
  return IOCB_SUCCESS;
 }

 return IOCB_BUSY;
}
