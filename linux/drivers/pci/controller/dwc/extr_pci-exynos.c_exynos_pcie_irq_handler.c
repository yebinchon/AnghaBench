
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_pcie {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int exynos_pcie_clear_irq_pulse (struct exynos_pcie*) ;

__attribute__((used)) static irqreturn_t exynos_pcie_irq_handler(int irq, void *arg)
{
 struct exynos_pcie *ep = arg;

 exynos_pcie_clear_irq_pulse(ep);
 return IRQ_HANDLED;
}
