
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whci_card {int n_caps; int uwbbase; } ;
struct pci_dev {int dummy; } ;


 int UWBCAPDATA_SIZE (int) ;
 int kfree (struct whci_card*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct whci_card* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int release_mem_region (int ,int ) ;
 int whci_del_cap (struct whci_card*,int) ;

__attribute__((used)) static void whci_remove(struct pci_dev *pci)
{
 struct whci_card *card = pci_get_drvdata(pci);
 int n;

 pci_set_drvdata(pci, ((void*)0));


 for (n = card->n_caps; n >= 0 ; n--)
  whci_del_cap(card, n);
 pci_iounmap(pci, card->uwbbase);
 release_mem_region(pci_resource_start(pci, 0), UWBCAPDATA_SIZE(card->n_caps));
 kfree(card);
 pci_disable_msi(pci);
 pci_disable_device(pci);
}
