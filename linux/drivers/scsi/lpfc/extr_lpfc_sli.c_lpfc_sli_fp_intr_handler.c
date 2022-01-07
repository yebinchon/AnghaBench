
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_sli_ring {int dummy; } ;
struct TYPE_2__ {struct lpfc_sli_ring* sli3_ring; } ;
struct lpfc_hba {scalar_t__ intr_type; int hba_flag; int ha_copy; int work_ha_mask; int cfg_multi_ring_support; TYPE_1__ sli; int hbalock; int HAregaddr; } ;
typedef int irqreturn_t ;


 int DEFER_ERATT ;
 int HA_R0_CLR_MSK ;
 int HA_R1_CLR_MSK ;
 int HA_RXMASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LPFC_EXTRA_RING ;
 int LPFC_FCP_RING ;
 scalar_t__ MSIX ;
 scalar_t__ lpfc_intr_state_check (struct lpfc_hba*) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int lpfc_sli_handle_fast_ring_event (struct lpfc_hba*,struct lpfc_sli_ring*,unsigned long) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int writel (int,int ) ;

irqreturn_t
lpfc_sli_fp_intr_handler(int irq, void *dev_id)
{
 struct lpfc_hba *phba;
 uint32_t ha_copy;
 unsigned long status;
 unsigned long iflag;
 struct lpfc_sli_ring *pring;




 phba = (struct lpfc_hba *) dev_id;

 if (unlikely(!phba))
  return IRQ_NONE;





 if (phba->intr_type == MSIX) {

  if (lpfc_intr_state_check(phba))
   return IRQ_NONE;

  if (lpfc_readl(phba->HAregaddr, &ha_copy))
   return IRQ_HANDLED;

  spin_lock_irqsave(&phba->hbalock, iflag);




  if (unlikely(phba->hba_flag & DEFER_ERATT)) {
   spin_unlock_irqrestore(&phba->hbalock, iflag);
   return IRQ_NONE;
  }
  writel((ha_copy & (HA_R0_CLR_MSK | HA_R1_CLR_MSK)),
   phba->HAregaddr);
  readl(phba->HAregaddr);
  spin_unlock_irqrestore(&phba->hbalock, iflag);
 } else
  ha_copy = phba->ha_copy;




 ha_copy &= ~(phba->work_ha_mask);

 status = (ha_copy & (HA_RXMASK << (4*LPFC_FCP_RING)));
 status >>= (4*LPFC_FCP_RING);
 pring = &phba->sli.sli3_ring[LPFC_FCP_RING];
 if (status & HA_RXMASK)
  lpfc_sli_handle_fast_ring_event(phba, pring, status);

 if (phba->cfg_multi_ring_support == 2) {




  status = (ha_copy & (HA_RXMASK << (4*LPFC_EXTRA_RING)));
  status >>= (4*LPFC_EXTRA_RING);
  if (status & HA_RXMASK) {
   lpfc_sli_handle_fast_ring_event(phba,
     &phba->sli.sli3_ring[LPFC_EXTRA_RING],
     status);
  }
 }
 return IRQ_HANDLED;
}
