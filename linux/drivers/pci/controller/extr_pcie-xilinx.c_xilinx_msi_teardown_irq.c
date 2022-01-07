
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_controller {int dummy; } ;


 int irq_dispose_mapping (unsigned int) ;
 int xilinx_pcie_destroy_msi (unsigned int) ;

__attribute__((used)) static void xilinx_msi_teardown_irq(struct msi_controller *chip,
        unsigned int irq)
{
 xilinx_pcie_destroy_msi(irq);
 irq_dispose_mapping(irq);
}
