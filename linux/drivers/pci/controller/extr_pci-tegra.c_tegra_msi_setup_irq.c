
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_msi {int phys; int domain; } ;
struct pci_dev {int dummy; } ;
struct msi_msg {int data; int address_hi; int address_lo; } ;
struct msi_desc {int dummy; } ;
struct msi_controller {int dummy; } ;


 int EINVAL ;
 unsigned int irq_create_mapping (int ,int) ;
 int irq_set_msi_desc (unsigned int,struct msi_desc*) ;
 int lower_32_bits (int ) ;
 int pci_write_msi_msg (unsigned int,struct msi_msg*) ;
 int tegra_msi_alloc (struct tegra_msi*) ;
 int tegra_msi_free (struct tegra_msi*,int) ;
 struct tegra_msi* to_tegra_msi (struct msi_controller*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int tegra_msi_setup_irq(struct msi_controller *chip,
          struct pci_dev *pdev, struct msi_desc *desc)
{
 struct tegra_msi *msi = to_tegra_msi(chip);
 struct msi_msg msg;
 unsigned int irq;
 int hwirq;

 hwirq = tegra_msi_alloc(msi);
 if (hwirq < 0)
  return hwirq;

 irq = irq_create_mapping(msi->domain, hwirq);
 if (!irq) {
  tegra_msi_free(msi, hwirq);
  return -EINVAL;
 }

 irq_set_msi_desc(irq, desc);

 msg.address_lo = lower_32_bits(msi->phys);
 msg.address_hi = upper_32_bits(msi->phys);
 msg.data = hwirq;

 pci_write_msi_msg(irq, &msg);

 return 0;
}
