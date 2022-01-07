
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_ras_fwlog {int ras_active; } ;
struct TYPE_2__ {scalar_t__ conf_regs_memmap_p; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; struct lpfc_ras_fwlog ras_fwlog; } ;


 int LPFC_CTL_PDEV_CTL_DDL_RAS ;
 scalar_t__ LPFC_CTL_PDEV_CTL_OFFSET ;
 int writel (int ,scalar_t__) ;

void
lpfc_ras_stop_fwlog(struct lpfc_hba *phba)
{
 struct lpfc_ras_fwlog *ras_fwlog = &phba->ras_fwlog;

 ras_fwlog->ras_active = 0;


 writel(LPFC_CTL_PDEV_CTL_DDL_RAS,
        phba->sli4_hba.conf_regs_memmap_p + LPFC_CTL_PDEV_CTL_OFFSET);
}
