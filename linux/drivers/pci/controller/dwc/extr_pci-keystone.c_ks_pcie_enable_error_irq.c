
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keystone_pcie {int dummy; } ;


 int ERR_IRQ_ALL ;
 int ERR_IRQ_ENABLE_SET ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int ) ;

__attribute__((used)) static void ks_pcie_enable_error_irq(struct keystone_pcie *ks_pcie)
{
 ks_pcie_app_writel(ks_pcie, ERR_IRQ_ENABLE_SET, ERR_IRQ_ALL);
}
