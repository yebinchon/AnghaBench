
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ hdr_type; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;
 scalar_t__ dev_is_pci (struct device*) ;
 scalar_t__ match_string (int ,int ,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int vfio_driver_whitelist ;

__attribute__((used)) static bool vfio_dev_whitelisted(struct device *dev, struct device_driver *drv)
{
 if (dev_is_pci(dev)) {
  struct pci_dev *pdev = to_pci_dev(dev);

  if (pdev->hdr_type != PCI_HEADER_TYPE_NORMAL)
   return 1;
 }

 return match_string(vfio_driver_whitelist,
       ARRAY_SIZE(vfio_driver_whitelist),
       drv->name) >= 0;
}
