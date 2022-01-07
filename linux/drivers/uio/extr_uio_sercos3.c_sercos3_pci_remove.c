
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {struct uio_info* priv; TYPE_1__* mem; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ internal_addr; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct uio_info*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct uio_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int uio_unregister_device (struct uio_info*) ;

__attribute__((used)) static void sercos3_pci_remove(struct pci_dev *dev)
{
 struct uio_info *info = pci_get_drvdata(dev);
 int i;

 uio_unregister_device(info);
 pci_release_regions(dev);
 pci_disable_device(dev);
 for (i = 0; i < 5; i++) {
  if (info->mem[i].internal_addr)
   iounmap(info->mem[i].internal_addr);
 }
 kfree(info->priv);
 kfree(info);
}
