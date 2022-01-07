
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pci_generic_dev {int pdev; } ;
struct uio_info {int dummy; } ;
struct inode {int dummy; } ;


 int pci_clear_master (int ) ;
 struct uio_pci_generic_dev* to_uio_pci_generic_dev (struct uio_info*) ;

__attribute__((used)) static int release(struct uio_info *info, struct inode *inode)
{
 struct uio_pci_generic_dev *gdev = to_uio_pci_generic_dev(info);
 pci_clear_master(gdev->pdev);
 return 0;
}
