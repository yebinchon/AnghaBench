
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioa_host_interrupt_clr_reg; int ioa_host_interrupt_mask_reg; } ;
struct pmcraid_instance {TYPE_1__ int_regs; int interrupt_mode; } ;


 int INTRS_TRANSITION_TO_OPERATIONAL ;
 int PMCRAID_PCI_INTERRUPTS ;
 int iowrite32 (int,int ) ;
 int pmcraid_enable_interrupts (struct pmcraid_instance*,int ) ;
 int pmcraid_read_interrupts (struct pmcraid_instance*) ;
 int pmcraid_reinit_buffers (struct pmcraid_instance*) ;

__attribute__((used)) static int pmcraid_reset_enable_ioa(struct pmcraid_instance *pinstance)
{
 u32 intrs;

 pmcraid_reinit_buffers(pinstance);
 intrs = pmcraid_read_interrupts(pinstance);

 pmcraid_enable_interrupts(pinstance, PMCRAID_PCI_INTERRUPTS);

 if (intrs & INTRS_TRANSITION_TO_OPERATIONAL) {
  if (!pinstance->interrupt_mode) {
   iowrite32(INTRS_TRANSITION_TO_OPERATIONAL,
    pinstance->int_regs.
    ioa_host_interrupt_mask_reg);
   iowrite32(INTRS_TRANSITION_TO_OPERATIONAL,
    pinstance->int_regs.ioa_host_interrupt_clr_reg);
  }
  return 1;
 } else {
  return 0;
 }
}
