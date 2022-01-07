
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keystone_pcie {int dummy; } ;
typedef int irqreturn_t ;


 int ks_pcie_handle_error_irq (struct keystone_pcie*) ;

__attribute__((used)) static irqreturn_t ks_pcie_err_irq_handler(int irq, void *priv)
{
 struct keystone_pcie *ks_pcie = priv;

 return ks_pcie_handle_error_irq(ks_pcie);
}
