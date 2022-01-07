
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioa_host_interrupt_mask_reg; int global_interrupt_mask_reg; } ;
struct pmcraid_instance {TYPE_1__ int_regs; int interrupt_mode; } ;


 int GLOBAL_INTERRUPT_MASK ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int pmcraid_info (char*,int,int) ;

__attribute__((used)) static void pmcraid_enable_interrupts(
 struct pmcraid_instance *pinstance,
 u32 intrs
)
{
 u32 gmask = ioread32(pinstance->int_regs.global_interrupt_mask_reg);
 u32 nmask = gmask & (~GLOBAL_INTERRUPT_MASK);

 iowrite32(nmask, pinstance->int_regs.global_interrupt_mask_reg);

 if (!pinstance->interrupt_mode) {
  iowrite32(~intrs,
    pinstance->int_regs.ioa_host_interrupt_mask_reg);
  ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
 }

 pmcraid_info("enabled interrupts global mask = %x intr_mask = %x\n",
  ioread32(pinstance->int_regs.global_interrupt_mask_reg),
  ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg));
}
