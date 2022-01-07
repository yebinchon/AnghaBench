
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lpfc_hba {int dummy; } ;
struct TYPE_5__ {int mbxCommand; } ;
struct TYPE_6__ {TYPE_1__ mb; } ;
struct TYPE_7__ {scalar_t__ mbox_cmpl; TYPE_2__ u; int vport; } ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 int ENODEV ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LOG_VPORT ;
 int dump_stack () ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int ) ;
 scalar_t__ lpfc_sli_def_mbox_cmpl ;
 scalar_t__ lpfc_sli_wake_mbox_wait ;

int
lpfc_mbox_cmd_check(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{



 if (mboxq->mbox_cmpl && mboxq->mbox_cmpl != lpfc_sli_def_mbox_cmpl &&
     mboxq->mbox_cmpl != lpfc_sli_wake_mbox_wait) {
  if (!mboxq->vport) {
   lpfc_printf_log(phba, KERN_ERR, LOG_MBOX | LOG_VPORT,
     "1814 Mbox x%x failed, no vport\n",
     mboxq->u.mb.mbxCommand);
   dump_stack();
   return -ENODEV;
  }
 }
 return 0;
}
