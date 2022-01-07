
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tran_int_desc {int dummy; } ;
struct pci_dev {int devfn; } ;
struct msi_domain_info {struct hv_pcibus_device* data; } ;
struct msi_desc {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int * chip_data; } ;
struct hv_pcibus_device {int dummy; } ;
struct hv_pci_dev {int dummy; } ;


 int devfn_to_wslot (int ) ;
 struct hv_pci_dev* get_pcichild_wslot (struct hv_pcibus_device*,int ) ;
 int hv_int_desc_free (struct hv_pci_dev*,struct tran_int_desc*) ;
 struct tran_int_desc* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct msi_desc* irq_data_get_msi_desc (struct irq_data*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int kfree (struct tran_int_desc*) ;
 struct pci_dev* msi_desc_to_pci_dev (struct msi_desc*) ;
 int put_pcichild (struct hv_pci_dev*) ;

__attribute__((used)) static void hv_msi_free(struct irq_domain *domain, struct msi_domain_info *info,
   unsigned int irq)
{
 struct hv_pcibus_device *hbus;
 struct hv_pci_dev *hpdev;
 struct pci_dev *pdev;
 struct tran_int_desc *int_desc;
 struct irq_data *irq_data = irq_domain_get_irq_data(domain, irq);
 struct msi_desc *msi = irq_data_get_msi_desc(irq_data);

 pdev = msi_desc_to_pci_dev(msi);
 hbus = info->data;
 int_desc = irq_data_get_irq_chip_data(irq_data);
 if (!int_desc)
  return;

 irq_data->chip_data = ((void*)0);
 hpdev = get_pcichild_wslot(hbus, devfn_to_wslot(pdev->devfn));
 if (!hpdev) {
  kfree(int_desc);
  return;
 }

 hv_int_desc_free(hpdev, int_desc);
 put_pcichild(hpdev);
}
