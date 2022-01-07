
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct advk_pcie {int irq_domain; } ;


 int PCIE_ISR0_ALL_MASK ;
 int PCIE_ISR0_MASK_REG ;
 int PCIE_ISR0_MSI_INT_PENDING ;
 int PCIE_ISR0_REG ;
 int PCIE_ISR1_ALL_MASK ;
 int PCIE_ISR1_INTX_ASSERT (int) ;
 int PCIE_ISR1_MASK_REG ;
 int PCIE_ISR1_REG ;
 int PCI_NUM_INTX ;
 int advk_pcie_handle_msi (struct advk_pcie*) ;
 int advk_readl (struct advk_pcie*,int ) ;
 int advk_writel (struct advk_pcie*,int,int ) ;
 int generic_handle_irq (int) ;
 int irq_find_mapping (int ,int) ;

__attribute__((used)) static void advk_pcie_handle_int(struct advk_pcie *pcie)
{
 u32 isr0_val, isr0_mask, isr0_status;
 u32 isr1_val, isr1_mask, isr1_status;
 int i, virq;

 isr0_val = advk_readl(pcie, PCIE_ISR0_REG);
 isr0_mask = advk_readl(pcie, PCIE_ISR0_MASK_REG);
 isr0_status = isr0_val & ((~isr0_mask) & PCIE_ISR0_ALL_MASK);

 isr1_val = advk_readl(pcie, PCIE_ISR1_REG);
 isr1_mask = advk_readl(pcie, PCIE_ISR1_MASK_REG);
 isr1_status = isr1_val & ((~isr1_mask) & PCIE_ISR1_ALL_MASK);

 if (!isr0_status && !isr1_status) {
  advk_writel(pcie, isr0_val, PCIE_ISR0_REG);
  advk_writel(pcie, isr1_val, PCIE_ISR1_REG);
  return;
 }


 if (isr0_status & PCIE_ISR0_MSI_INT_PENDING)
  advk_pcie_handle_msi(pcie);


 for (i = 0; i < PCI_NUM_INTX; i++) {
  if (!(isr1_status & PCIE_ISR1_INTX_ASSERT(i)))
   continue;

  advk_writel(pcie, PCIE_ISR1_INTX_ASSERT(i),
       PCIE_ISR1_REG);

  virq = irq_find_mapping(pcie->irq_domain, i);
  generic_handle_irq(virq);
 }
}
