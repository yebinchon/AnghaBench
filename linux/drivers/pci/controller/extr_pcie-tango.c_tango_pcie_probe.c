
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_pcie {int used_msi_lock; struct irq_domain* dom; scalar_t__ base; scalar_t__ msi_doorbell; } ;
struct resource {scalar_t__ start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_pci_range_parser {int dummy; } ;
struct of_pci_range {scalar_t__ pci_addr; scalar_t__ size; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int LOCKDEP_STILL_OK ;
 int MSI_MAX ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ SMP8759_DOORBELL ;
 scalar_t__ SMP8759_ENABLE ;
 int TAINT_CRAP ;
 int add_taint (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct tango_pcie* devm_kzalloc (struct device*,int,int ) ;
 int dom_ops ;
 struct irq_domain* irq_domain_create_linear (struct fwnode_handle*,int,int *,struct tango_pcie*) ;
 int irq_domain_remove (struct irq_domain*) ;
 int irq_set_chained_handler_and_data (int,int ,struct tango_pcie*) ;
 int msi_dom_info ;
 struct fwnode_handle* of_node_to_fwnode (int ) ;
 scalar_t__ of_pci_dma_range_parser_init (struct of_pci_range_parser*,int ) ;
 int * of_pci_range_parser_one (struct of_pci_range_parser*,struct of_pci_range*) ;
 int pci_host_common_probe (struct platform_device*,int *) ;
 struct irq_domain* pci_msi_create_irq_domain (struct fwnode_handle*,int *,struct irq_domain*) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct tango_pcie*) ;
 int smp8759_ecam_ops ;
 int spin_lock_init (int *) ;
 int tango_msi_isr ;
 int tango_pcie_link_up (struct tango_pcie*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int tango_pcie_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct tango_pcie *pcie;
 struct resource *res;
 struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);
 struct irq_domain *msi_dom, *irq_dom;
 struct of_pci_range_parser parser;
 struct of_pci_range range;
 int virq, offset;

 dev_warn(dev, "simultaneous PCI config and MMIO accesses may cause data corruption\n");
 add_taint(TAINT_CRAP, LOCKDEP_STILL_OK);

 pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
 if (!pcie)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 pcie->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(pcie->base))
  return PTR_ERR(pcie->base);

 platform_set_drvdata(pdev, pcie);

 if (!tango_pcie_link_up(pcie))
  return -ENODEV;

 if (of_pci_dma_range_parser_init(&parser, dev->of_node) < 0)
  return -ENOENT;

 if (of_pci_range_parser_one(&parser, &range) == ((void*)0))
  return -ENOENT;

 range.pci_addr += range.size;
 pcie->msi_doorbell = range.pci_addr + res->start + SMP8759_DOORBELL;

 for (offset = 0; offset < MSI_MAX / 8; offset += 4)
  writel_relaxed(0, pcie->base + SMP8759_ENABLE + offset);

 virq = platform_get_irq(pdev, 1);
 if (virq <= 0) {
  dev_err(dev, "Failed to map IRQ\n");
  return -ENXIO;
 }

 irq_dom = irq_domain_create_linear(fwnode, MSI_MAX, &dom_ops, pcie);
 if (!irq_dom) {
  dev_err(dev, "Failed to create IRQ domain\n");
  return -ENOMEM;
 }

 msi_dom = pci_msi_create_irq_domain(fwnode, &msi_dom_info, irq_dom);
 if (!msi_dom) {
  dev_err(dev, "Failed to create MSI domain\n");
  irq_domain_remove(irq_dom);
  return -ENOMEM;
 }

 pcie->dom = irq_dom;
 spin_lock_init(&pcie->used_msi_lock);
 irq_set_chained_handler_and_data(virq, tango_msi_isr, pcie);

 return pci_host_common_probe(pdev, &smp8759_ecam_ops);
}
