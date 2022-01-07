
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;


 int device_property_read_u8 (int *,char*,int *) ;

__attribute__((used)) static bool nhi_imr_valid(struct pci_dev *pdev)
{
 u8 val;

 if (!device_property_read_u8(&pdev->dev, "IMR_VALID", &val))
  return !!val;

 return 1;
}
