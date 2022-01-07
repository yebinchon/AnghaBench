
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct myrs_hba {int host; scalar_t__ mmio_base; scalar_t__ io_addr; scalar_t__ irq; int (* disable_intr ) (struct myrs_hba*) ;struct pci_dev* pdev; } ;


 int free_irq (scalar_t__,struct myrs_hba*) ;
 int iounmap (scalar_t__) ;
 int myrs_unmap (struct myrs_hba*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int release_region (scalar_t__,int) ;
 int scsi_host_put (int ) ;
 int stub1 (struct myrs_hba*) ;

__attribute__((used)) static void myrs_cleanup(struct myrs_hba *cs)
{
 struct pci_dev *pdev = cs->pdev;


 myrs_unmap(cs);

 if (cs->mmio_base) {
  cs->disable_intr(cs);
  iounmap(cs->mmio_base);
 }
 if (cs->irq)
  free_irq(cs->irq, cs);
 if (cs->io_addr)
  release_region(cs->io_addr, 0x80);
 iounmap(cs->mmio_base);
 pci_set_drvdata(pdev, ((void*)0));
 pci_disable_device(pdev);
 scsi_host_put(cs->host);
}
