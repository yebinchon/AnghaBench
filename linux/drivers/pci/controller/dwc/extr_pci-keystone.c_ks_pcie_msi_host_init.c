
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int * msi_irq_chip; } ;


 int dw_pcie_allocate_domains (struct pcie_port*) ;
 int ks_pcie_msi_irq_chip ;

__attribute__((used)) static int ks_pcie_msi_host_init(struct pcie_port *pp)
{
 pp->msi_irq_chip = &ks_pcie_msi_irq_chip;
 return dw_pcie_allocate_domains(pp);
}
