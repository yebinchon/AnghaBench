
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioa_host_interrupt_reg; int ioa_host_msix_interrupt_reg; } ;
struct pmcraid_instance {TYPE_1__ int_regs; scalar_t__ interrupt_mode; } ;


 int ioread32 (int ) ;

__attribute__((used)) static u32 pmcraid_read_interrupts(struct pmcraid_instance *pinstance)
{
 return (pinstance->interrupt_mode) ?
  ioread32(pinstance->int_regs.ioa_host_msix_interrupt_reg) :
  ioread32(pinstance->int_regs.ioa_host_interrupt_reg);
}
