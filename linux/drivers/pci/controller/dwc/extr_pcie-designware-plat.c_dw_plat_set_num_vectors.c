
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int num_vectors; } ;


 int MAX_MSI_IRQS ;

__attribute__((used)) static void dw_plat_set_num_vectors(struct pcie_port *pp)
{
 pp->num_vectors = MAX_MSI_IRQS;
}
