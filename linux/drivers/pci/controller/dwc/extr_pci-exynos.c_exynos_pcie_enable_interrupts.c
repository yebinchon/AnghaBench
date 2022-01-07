
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_pcie {int dummy; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int exynos_pcie_enable_irq_pulse (struct exynos_pcie*) ;
 int exynos_pcie_msi_init (struct exynos_pcie*) ;

__attribute__((used)) static void exynos_pcie_enable_interrupts(struct exynos_pcie *ep)
{
 exynos_pcie_enable_irq_pulse(ep);

 if (IS_ENABLED(CONFIG_PCI_MSI))
  exynos_pcie_msi_init(ep);
}
