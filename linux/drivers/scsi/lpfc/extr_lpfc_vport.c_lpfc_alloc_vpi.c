
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vpi_used; } ;
struct TYPE_4__ {TYPE_1__ max_cfg_param; } ;
struct lpfc_hba {int max_vpi; scalar_t__ sli_rev; int hbalock; TYPE_2__ sli4_hba; int vpi_bmask; } ;


 scalar_t__ LPFC_SLI_REV4 ;
 unsigned long find_next_zero_bit (int ,int,int) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_alloc_vpi(struct lpfc_hba *phba)
{
 unsigned long vpi;

 spin_lock_irq(&phba->hbalock);

 vpi = find_next_zero_bit(phba->vpi_bmask, (phba->max_vpi + 1), 1);
 if (vpi > phba->max_vpi)
  vpi = 0;
 else
  set_bit(vpi, phba->vpi_bmask);
 if (phba->sli_rev == LPFC_SLI_REV4)
  phba->sli4_hba.max_cfg_param.vpi_used++;
 spin_unlock_irq(&phba->hbalock);
 return vpi;
}
