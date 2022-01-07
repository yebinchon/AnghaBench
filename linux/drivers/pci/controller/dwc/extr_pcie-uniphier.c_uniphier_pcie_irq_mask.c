
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_pcie_priv {scalar_t__ base; } ;
struct pcie_port {int dummy; } ;
struct irq_data {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int BIT (scalar_t__) ;
 scalar_t__ PCL_RCV_INTX ;
 int PCL_RCV_INTX_ALL_MASK ;
 scalar_t__ PCL_RCV_INTX_MASK_SHIFT ;
 struct pcie_port* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 int readl (scalar_t__) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct uniphier_pcie_priv* to_uniphier_pcie (struct dw_pcie*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_pcie_irq_mask(struct irq_data *d)
{
 struct pcie_port *pp = irq_data_get_irq_chip_data(d);
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct uniphier_pcie_priv *priv = to_uniphier_pcie(pci);
 u32 val;

 val = readl(priv->base + PCL_RCV_INTX);
 val &= ~PCL_RCV_INTX_ALL_MASK;
 val |= BIT(irqd_to_hwirq(d) + PCL_RCV_INTX_MASK_SHIFT);
 writel(val, priv->base + PCL_RCV_INTX);
}
