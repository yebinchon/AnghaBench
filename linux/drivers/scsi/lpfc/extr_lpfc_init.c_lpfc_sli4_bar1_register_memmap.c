
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ drbl_regs_memmap_p; scalar_t__ MQDBregaddr; scalar_t__ EQDBregaddr; scalar_t__ CQDBregaddr; scalar_t__ WQDBregaddr; scalar_t__ RQDBregaddr; scalar_t__ ctrl_regs_memmap_p; scalar_t__ ISCRregaddr; scalar_t__ IMRregaddr; scalar_t__ ISRregaddr; scalar_t__ PSMPHRregaddr; } ;
struct lpfc_hba {TYPE_2__* pcidev; TYPE_1__ sli4_hba; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ LPFC_HST_IMR0 ;
 scalar_t__ LPFC_HST_ISCR0 ;
 scalar_t__ LPFC_HST_ISR0 ;
 scalar_t__ LPFC_IF6_CQ_DOORBELL ;
 scalar_t__ LPFC_IF6_EQ_DOORBELL ;
 scalar_t__ LPFC_IF6_MQ_DOORBELL ;
 scalar_t__ LPFC_IF6_RQ_DOORBELL ;
 scalar_t__ LPFC_IF6_WQ_DOORBELL ;
 scalar_t__ LPFC_SLIPORT_IF0_SMPHR ;




 int dev_err (int *,char*,int) ;

__attribute__((used)) static void
lpfc_sli4_bar1_register_memmap(struct lpfc_hba *phba, uint32_t if_type)
{
 switch (if_type) {
 case 131:
  phba->sli4_hba.PSMPHRregaddr =
   phba->sli4_hba.ctrl_regs_memmap_p +
   LPFC_SLIPORT_IF0_SMPHR;
  phba->sli4_hba.ISRregaddr = phba->sli4_hba.ctrl_regs_memmap_p +
   LPFC_HST_ISR0;
  phba->sli4_hba.IMRregaddr = phba->sli4_hba.ctrl_regs_memmap_p +
   LPFC_HST_IMR0;
  phba->sli4_hba.ISCRregaddr = phba->sli4_hba.ctrl_regs_memmap_p +
   LPFC_HST_ISCR0;
  break;
 case 128:
  phba->sli4_hba.RQDBregaddr = phba->sli4_hba.drbl_regs_memmap_p +
   LPFC_IF6_RQ_DOORBELL;
  phba->sli4_hba.WQDBregaddr = phba->sli4_hba.drbl_regs_memmap_p +
   LPFC_IF6_WQ_DOORBELL;
  phba->sli4_hba.CQDBregaddr = phba->sli4_hba.drbl_regs_memmap_p +
   LPFC_IF6_CQ_DOORBELL;
  phba->sli4_hba.EQDBregaddr = phba->sli4_hba.drbl_regs_memmap_p +
   LPFC_IF6_EQ_DOORBELL;
  phba->sli4_hba.MQDBregaddr = phba->sli4_hba.drbl_regs_memmap_p +
   LPFC_IF6_MQ_DOORBELL;
  break;
 case 129:
 case 130:
 default:
  dev_err(&phba->pcidev->dev,
      "FATAL - unsupported SLI4 interface type - %d\n",
      if_type);
  break;
 }
}
