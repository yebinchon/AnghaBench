
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hba_eq_hdl; } ;
struct lpfc_hba {int cfg_irq_chann; TYPE_1__ sli4_hba; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 scalar_t__ lpfc_sli4_hba_intr_handler (int,int *) ;
 scalar_t__ unlikely (int) ;

irqreturn_t
lpfc_sli4_intr_handler(int irq, void *dev_id)
{
 struct lpfc_hba *phba;
 irqreturn_t hba_irq_rc;
 bool hba_handled = 0;
 int qidx;


 phba = (struct lpfc_hba *)dev_id;

 if (unlikely(!phba))
  return IRQ_NONE;




 for (qidx = 0; qidx < phba->cfg_irq_chann; qidx++) {
  hba_irq_rc = lpfc_sli4_hba_intr_handler(irq,
     &phba->sli4_hba.hba_eq_hdl[qidx]);
  if (hba_irq_rc == IRQ_HANDLED)
   hba_handled |= 1;
 }

 return (hba_handled == 1) ? IRQ_HANDLED : IRQ_NONE;
}
