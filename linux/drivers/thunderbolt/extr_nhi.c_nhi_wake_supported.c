
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;


 scalar_t__ device_property_read_u8 (int *,char*,int *) ;

__attribute__((used)) static bool nhi_wake_supported(struct pci_dev *pdev)
{
 u8 val;





 if (device_property_read_u8(&pdev->dev, "WAKE_SUPPORTED", &val))
  return !!val;

 return 1;
}
