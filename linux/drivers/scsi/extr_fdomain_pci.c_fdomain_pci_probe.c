
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct Scsi_Host {int dummy; } ;


 int ENODEV ;
 struct Scsi_Host* fdomain_create (int ,int ,int,int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct Scsi_Host*) ;

__attribute__((used)) static int fdomain_pci_probe(struct pci_dev *pdev,
        const struct pci_device_id *d)
{
 int err;
 struct Scsi_Host *sh;

 err = pci_enable_device(pdev);
 if (err)
  goto fail;

 err = pci_request_regions(pdev, "fdomain_pci");
 if (err)
  goto disable_device;

 err = -ENODEV;
 if (pci_resource_len(pdev, 0) == 0)
  goto release_region;

 sh = fdomain_create(pci_resource_start(pdev, 0), pdev->irq, 7,
       &pdev->dev);
 if (!sh)
  goto release_region;

 pci_set_drvdata(pdev, sh);
 return 0;

release_region:
 pci_release_regions(pdev);
disable_device:
 pci_disable_device(pdev);
fail:
 return err;
}
