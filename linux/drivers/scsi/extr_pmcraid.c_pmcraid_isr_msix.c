
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pmcraid_isr_param {int hrrq_id; struct pmcraid_instance* drv_inst; } ;
struct TYPE_4__ {int host_ioa_interrupt_reg; } ;
struct pmcraid_instance {int ioa_unit_check; int * isr_tasklet; TYPE_2__ int_regs; TYPE_1__* host; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int host_lock; } ;


 int DOORBELL_INTR_MSIX_CLR ;
 int INTRS_IOA_UNIT_CHECK ;
 int INTRS_TRANSITION_TO_OPERATIONAL ;
 int IRQ_HANDLED ;
 int PMCRAID_ERROR_INTERRUPTS ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int pmcraid_clr_trans_op (struct pmcraid_instance*) ;
 int pmcraid_err (char*,int) ;
 int pmcraid_initiate_reset (struct pmcraid_instance*) ;
 int pmcraid_read_interrupts (struct pmcraid_instance*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t pmcraid_isr_msix(int irq, void *dev_id)
{
 struct pmcraid_isr_param *hrrq_vector;
 struct pmcraid_instance *pinstance;
 unsigned long lock_flags;
 u32 intrs_val;
 int hrrq_id;

 hrrq_vector = (struct pmcraid_isr_param *)dev_id;
 hrrq_id = hrrq_vector->hrrq_id;
 pinstance = hrrq_vector->drv_inst;

 if (!hrrq_id) {

  intrs_val = pmcraid_read_interrupts(pinstance);
  if (intrs_val &&
   ((ioread32(pinstance->int_regs.host_ioa_interrupt_reg)
   & DOORBELL_INTR_MSIX_CLR) == 0)) {





   if (intrs_val & PMCRAID_ERROR_INTERRUPTS) {
    if (intrs_val & INTRS_IOA_UNIT_CHECK)
     pinstance->ioa_unit_check = 1;

    pmcraid_err("ISR: error interrupts: %x 					initiating reset\n", intrs_val);

    spin_lock_irqsave(pinstance->host->host_lock,
     lock_flags);
    pmcraid_initiate_reset(pinstance);
    spin_unlock_irqrestore(
     pinstance->host->host_lock,
     lock_flags);
   }




   if (intrs_val & INTRS_TRANSITION_TO_OPERATIONAL)
    pmcraid_clr_trans_op(pinstance);





   iowrite32(DOORBELL_INTR_MSIX_CLR,
    pinstance->int_regs.host_ioa_interrupt_reg);
   ioread32(pinstance->int_regs.host_ioa_interrupt_reg);


  }
 }

 tasklet_schedule(&(pinstance->isr_tasklet[hrrq_id]));

 return IRQ_HANDLED;
}
