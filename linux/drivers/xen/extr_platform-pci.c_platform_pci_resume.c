
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int callback_via ;
 int dev_err (int *,char*) ;
 scalar_t__ xen_have_vector_callback ;
 int xen_set_callback_via (int ) ;

__attribute__((used)) static int platform_pci_resume(struct pci_dev *pdev)
{
 int err;

 if (xen_have_vector_callback)
  return 0;

 err = xen_set_callback_via(callback_via);
 if (err) {
  dev_err(&pdev->dev, "platform_pci_resume failure!\n");
  return err;
 }
 return 0;
}
