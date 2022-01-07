
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; } ;


 int dev_info (int *,char*,char*) ;

__attribute__((used)) static void pqi_print_ctrl_info(struct pci_dev *pci_dev,
 const struct pci_device_id *id)
{
 char *ctrl_description;

 if (id->driver_data)
  ctrl_description = (char *)id->driver_data;
 else
  ctrl_description = "Microsemi Smart Family Controller";

 dev_info(&pci_dev->dev, "%s found\n", ctrl_description);
}
