
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_uio_dev {int pdev; int qedi_uinfo; } ;


 int __qedi_free_uio_rings (struct qedi_uio_dev*) ;
 int kfree (struct qedi_uio_dev*) ;
 int pci_dev_put (int ) ;
 int uio_unregister_device (int *) ;

__attribute__((used)) static void __qedi_free_uio(struct qedi_uio_dev *udev)
{
 uio_unregister_device(&udev->qedi_uinfo);

 __qedi_free_uio_rings(udev);

 pci_dev_put(udev->pdev);
 kfree(udev);
}
