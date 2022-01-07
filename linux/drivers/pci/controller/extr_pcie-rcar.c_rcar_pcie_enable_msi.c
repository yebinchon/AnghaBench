
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int teardown_irq; int setup_irqs; int setup_irq; struct device* dev; } ;
struct rcar_msi {scalar_t__ pages; int irq2; int irq1; int domain; TYPE_2__ chip; int lock; } ;
struct rcar_pcie {struct rcar_msi msi; struct device* dev; } ;
struct device {int of_node; } ;
typedef int phys_addr_t ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_PCI_MSI_NR ;
 int IRQF_NO_THREAD ;
 int IRQF_SHARED ;
 int MSIFE ;
 int PCIEMSIALR ;
 int PCIEMSIAUR ;
 int PCIEMSIIER ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_request_irq (struct device*,int ,int ,int,int ,struct rcar_pcie*) ;
 int irq_create_mapping (int ,int) ;
 int irq_domain_add_linear (int ,int,int *,TYPE_2__*) ;
 int lower_32_bits (int ) ;
 int msi_domain_ops ;
 int mutex_init (int *) ;
 TYPE_1__ rcar_msi_irq_chip ;
 int rcar_msi_setup_irq ;
 int rcar_msi_setup_irqs ;
 int rcar_msi_teardown_irq ;
 int rcar_pci_write_reg (struct rcar_pcie*,int,int ) ;
 int rcar_pcie_msi_irq ;
 int rcar_pcie_unmap_msi (struct rcar_pcie*) ;
 int upper_32_bits (int ) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int rcar_pcie_enable_msi(struct rcar_pcie *pcie)
{
 struct device *dev = pcie->dev;
 struct rcar_msi *msi = &pcie->msi;
 phys_addr_t base;
 int err, i;

 mutex_init(&msi->lock);

 msi->chip.dev = dev;
 msi->chip.setup_irq = rcar_msi_setup_irq;
 msi->chip.setup_irqs = rcar_msi_setup_irqs;
 msi->chip.teardown_irq = rcar_msi_teardown_irq;

 msi->domain = irq_domain_add_linear(dev->of_node, INT_PCI_MSI_NR,
         &msi_domain_ops, &msi->chip);
 if (!msi->domain) {
  dev_err(dev, "failed to create IRQ domain\n");
  return -ENOMEM;
 }

 for (i = 0; i < INT_PCI_MSI_NR; i++)
  irq_create_mapping(msi->domain, i);


 err = devm_request_irq(dev, msi->irq1, rcar_pcie_msi_irq,
          IRQF_SHARED | IRQF_NO_THREAD,
          rcar_msi_irq_chip.name, pcie);
 if (err < 0) {
  dev_err(dev, "failed to request IRQ: %d\n", err);
  goto err;
 }

 err = devm_request_irq(dev, msi->irq2, rcar_pcie_msi_irq,
          IRQF_SHARED | IRQF_NO_THREAD,
          rcar_msi_irq_chip.name, pcie);
 if (err < 0) {
  dev_err(dev, "failed to request IRQ: %d\n", err);
  goto err;
 }


 msi->pages = __get_free_pages(GFP_KERNEL, 0);
 if (!msi->pages) {
  err = -ENOMEM;
  goto err;
 }
 base = virt_to_phys((void *)msi->pages);

 rcar_pci_write_reg(pcie, lower_32_bits(base) | MSIFE, PCIEMSIALR);
 rcar_pci_write_reg(pcie, upper_32_bits(base), PCIEMSIAUR);


 rcar_pci_write_reg(pcie, 0xffffffff, PCIEMSIIER);

 return 0;

err:
 rcar_pcie_unmap_msi(pcie);
 return err;
}
