
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ulpWord; } ;
struct TYPE_4__ {scalar_t__ ulpCommand; int ulpTimeout; TYPE_1__ un; int ulpStatus; int ulpIoTag; } ;
struct lpfc_iocbq {TYPE_2__ iocb; } ;
struct lpfc_hba {int dummy; } ;
typedef TYPE_2__ IOCB_t ;


 scalar_t__ CMD_GEN_REQUEST64_CR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int lpfc_ct_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
lpfc_ignore_els_cmpl(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
       struct lpfc_iocbq *rspiocb)
{
 IOCB_t *irsp = &rspiocb->iocb;


 lpfc_printf_log(phba, KERN_INFO, LOG_ELS,
   "0139 Ignoring ELS cmd tag x%x completion Data: "
   "x%x x%x x%x\n",
   irsp->ulpIoTag, irsp->ulpStatus,
   irsp->un.ulpWord[4], irsp->ulpTimeout);
 if (cmdiocb->iocb.ulpCommand == CMD_GEN_REQUEST64_CR)
  lpfc_ct_free_iocb(phba, cmdiocb);
 else
  lpfc_els_free_iocb(phba, cmdiocb);
 return;
}
