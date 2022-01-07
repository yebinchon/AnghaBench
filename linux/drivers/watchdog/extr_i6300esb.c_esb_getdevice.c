
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct esb_dev {TYPE_1__* pdev; int * base; } ;
struct TYPE_6__ {int dev; } ;


 int ESB_MODULE_NAME ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct esb_dev*) ;
 int pci_disable_device (TYPE_1__*) ;
 scalar_t__ pci_enable_device (TYPE_1__*) ;
 int * pci_ioremap_bar (TYPE_1__*,int ) ;
 int pci_release_region (TYPE_1__*,int ) ;
 scalar_t__ pci_request_region (TYPE_1__*,int ,int ) ;

__attribute__((used)) static unsigned char esb_getdevice(struct esb_dev *edev)
{
 if (pci_enable_device(edev->pdev)) {
  dev_err(&edev->pdev->dev, "failed to enable device\n");
  goto err_devput;
 }

 if (pci_request_region(edev->pdev, 0, ESB_MODULE_NAME)) {
  dev_err(&edev->pdev->dev, "failed to request region\n");
  goto err_disable;
 }

 edev->base = pci_ioremap_bar(edev->pdev, 0);
 if (edev->base == ((void*)0)) {

  dev_err(&edev->pdev->dev, "failed to get BASEADDR\n");
  goto err_release;
 }


 dev_set_drvdata(&edev->pdev->dev, edev);
 return 1;

err_release:
 pci_release_region(edev->pdev, 0);
err_disable:
 pci_disable_device(edev->pdev);
err_devput:
 return 0;
}
