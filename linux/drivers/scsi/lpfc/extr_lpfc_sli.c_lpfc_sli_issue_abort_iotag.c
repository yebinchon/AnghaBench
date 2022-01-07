
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int load_flag; } ;
struct lpfc_sli_ring {scalar_t__ ringno; } ;
struct TYPE_2__ {scalar_t__ ulpCommand; } ;
struct lpfc_iocbq {int iocb_flag; void* iocb_cmpl; void* fabric_iocb_cmpl; TYPE_1__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {int hbalock; } ;
typedef TYPE_1__ IOCB_t ;


 scalar_t__ CMD_ABORT_XRI_CN ;
 scalar_t__ CMD_CLOSE_XRI_CN ;
 int FC_UNLOADING ;
 int IOCB_ERROR ;
 int LPFC_DRIVER_ABORTED ;
 scalar_t__ LPFC_ELS_RING ;
 int LPFC_IO_FABRIC ;
 int lockdep_assert_held (int *) ;
 void* lpfc_ignore_els_cmpl ;
 int lpfc_sli_abort_iotag_issue (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ;

int
lpfc_sli_issue_abort_iotag(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
      struct lpfc_iocbq *cmdiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 int retval = IOCB_ERROR;
 IOCB_t *icmd = ((void*)0);

 lockdep_assert_held(&phba->hbalock);






 icmd = &cmdiocb->iocb;
 if (icmd->ulpCommand == CMD_ABORT_XRI_CN ||
     icmd->ulpCommand == CMD_CLOSE_XRI_CN ||
     (cmdiocb->iocb_flag & LPFC_DRIVER_ABORTED) != 0)
  return 0;

 if (!pring) {
  if (cmdiocb->iocb_flag & LPFC_IO_FABRIC)
   cmdiocb->fabric_iocb_cmpl = lpfc_ignore_els_cmpl;
  else
   cmdiocb->iocb_cmpl = lpfc_ignore_els_cmpl;
  goto abort_iotag_exit;
 }





 if ((vport->load_flag & FC_UNLOADING) &&
     (pring->ringno == LPFC_ELS_RING)) {
  if (cmdiocb->iocb_flag & LPFC_IO_FABRIC)
   cmdiocb->fabric_iocb_cmpl = lpfc_ignore_els_cmpl;
  else
   cmdiocb->iocb_cmpl = lpfc_ignore_els_cmpl;
  goto abort_iotag_exit;
 }


 retval = lpfc_sli_abort_iotag_issue(phba, pring, cmdiocb);

abort_iotag_exit:





 return retval;
}
