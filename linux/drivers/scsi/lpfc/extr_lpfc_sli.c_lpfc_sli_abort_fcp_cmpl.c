
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abortIoTag; int abortContextTag; } ;
struct TYPE_5__ {int * ulpWord; TYPE_1__ acxri; } ;
struct TYPE_6__ {TYPE_2__ un; int ulpStatus; } ;
struct lpfc_iocbq {TYPE_3__ iocb; int iotag; } ;
struct lpfc_hba {int dummy; } ;


 int KERN_INFO ;
 int LOG_SLI ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int ,int ,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;

void
lpfc_sli_abort_fcp_cmpl(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
   struct lpfc_iocbq *rspiocb)
{
 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "3096 ABORT_XRI_CN completing on rpi x%x "
   "original iotag x%x, abort cmd iotag x%x "
   "status 0x%x, reason 0x%x\n",
   cmdiocb->iocb.un.acxri.abortContextTag,
   cmdiocb->iocb.un.acxri.abortIoTag,
   cmdiocb->iotag, rspiocb->iocb.ulpStatus,
   rspiocb->iocb.un.ulpWord[4]);
 lpfc_sli_release_iocbq(phba, cmdiocb);
 return;
}
