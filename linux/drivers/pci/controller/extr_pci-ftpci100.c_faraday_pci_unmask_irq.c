
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct faraday_pci {int dummy; } ;


 unsigned int BIT (scalar_t__) ;
 int FARADAY_PCI_CTRL2 ;
 scalar_t__ PCI_CTRL2_INTMASK_SHIFT ;
 int PCI_CTRL2_INTSTS_SHIFT ;
 int faraday_raw_pci_read_config (struct faraday_pci*,int ,int ,int ,int,unsigned int*) ;
 int faraday_raw_pci_write_config (struct faraday_pci*,int ,int ,int ,int,unsigned int) ;
 struct faraday_pci* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void faraday_pci_unmask_irq(struct irq_data *d)
{
 struct faraday_pci *p = irq_data_get_irq_chip_data(d);
 unsigned int reg;

 faraday_raw_pci_read_config(p, 0, 0, FARADAY_PCI_CTRL2, 4, &reg);
 reg &= ~(0xF << PCI_CTRL2_INTSTS_SHIFT);
 reg |= BIT(irqd_to_hwirq(d) + PCI_CTRL2_INTMASK_SHIFT);
 faraday_raw_pci_write_config(p, 0, 0, FARADAY_PCI_CTRL2, 4, reg);
}
