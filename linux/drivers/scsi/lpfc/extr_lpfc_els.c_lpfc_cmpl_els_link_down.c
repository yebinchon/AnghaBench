
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * ulpWord; } ;
struct TYPE_4__ {TYPE_1__ un; int ulpStatus; } ;
struct lpfc_iocbq {int iocb_flag; TYPE_2__ iocb; scalar_t__ context2; } ;
struct lpfc_hba {int fabric_iocb_count; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
typedef TYPE_2__ IOCB_t ;


 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_IO_FABRIC ;
 int atomic_dec (int *) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int ,int) ;

__attribute__((used)) static void
lpfc_cmpl_els_link_down(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
   struct lpfc_iocbq *rspiocb)
{
 IOCB_t *irsp;
 uint32_t *pcmd;
 uint32_t cmd;

 pcmd = (uint32_t *)(((struct lpfc_dmabuf *)cmdiocb->context2)->virt);
 cmd = *pcmd;
 irsp = &rspiocb->iocb;

 lpfc_printf_log(phba, KERN_INFO, LOG_ELS,
   "6445 ELS completes after LINK_DOWN: "
   " Status %x/%x cmd x%x flg x%x\n",
   irsp->ulpStatus, irsp->un.ulpWord[4], cmd,
   cmdiocb->iocb_flag);

 if (cmdiocb->iocb_flag & LPFC_IO_FABRIC) {
  cmdiocb->iocb_flag &= ~LPFC_IO_FABRIC;
  atomic_dec(&phba->fabric_iocb_count);
 }
 lpfc_els_free_iocb(phba, cmdiocb);
}
