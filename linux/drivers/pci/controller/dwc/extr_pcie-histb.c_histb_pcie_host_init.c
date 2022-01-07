
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int dw_pcie_msi_init (struct pcie_port*) ;
 int histb_pcie_establish_link (struct pcie_port*) ;

__attribute__((used)) static int histb_pcie_host_init(struct pcie_port *pp)
{
 histb_pcie_establish_link(pp);

 if (IS_ENABLED(CONFIG_PCI_MSI))
  dw_pcie_msi_init(pp);

 return 0;
}
