
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct myrb_hba {int host; scalar_t__ io_addr; scalar_t__ irq; scalar_t__ mmio_base; int io_base; int (* disable_intr ) (int ) ;struct pci_dev* pdev; } ;


 int free_irq (scalar_t__,struct myrb_hba*) ;
 int iounmap (scalar_t__) ;
 int myrb_unmap (struct myrb_hba*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int release_region (scalar_t__,int) ;
 int scsi_host_put (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void myrb_cleanup(struct myrb_hba *cb)
{
 struct pci_dev *pdev = cb->pdev;


 myrb_unmap(cb);

 if (cb->mmio_base) {
  cb->disable_intr(cb->io_base);
  iounmap(cb->mmio_base);
 }
 if (cb->irq)
  free_irq(cb->irq, cb);
 if (cb->io_addr)
  release_region(cb->io_addr, 0x80);
 pci_set_drvdata(pdev, ((void*)0));
 pci_disable_device(pdev);
 scsi_host_put(cb->host);
}
