
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pch_thermal_device {int hw_base; int tzd; } ;


 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pch_thermal_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int thermal_zone_device_unregister (int ) ;

__attribute__((used)) static void intel_pch_thermal_remove(struct pci_dev *pdev)
{
 struct pch_thermal_device *ptd = pci_get_drvdata(pdev);

 thermal_zone_device_unregister(ptd->tzd);
 iounmap(ptd->hw_base);
 pci_set_drvdata(pdev, ((void*)0));
 pci_release_region(pdev, 0);
 pci_disable_device(pdev);
}
