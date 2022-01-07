
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;


 int INT_DISABLE ;
 scalar_t__ INT_ENABLE_ADDR ;
 scalar_t__ INT_MASK_ADDR ;
 scalar_t__ MAILBOX ;
 int ioread8 (scalar_t__) ;
 int iounmap (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;
 int kfree (struct uio_info*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct uio_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int uio_unregister_device (struct uio_info*) ;

__attribute__((used)) static void remove(struct pci_dev *pdev)
{
 struct uio_info *info = pci_get_drvdata(pdev);


 iowrite8(INT_DISABLE, info->priv + INT_MASK_ADDR);
 iowrite32(INT_DISABLE, info->priv + INT_ENABLE_ADDR);

 ioread8(info->priv + MAILBOX);

 uio_unregister_device(info);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 iounmap(info->priv);

 kfree(info);
}
