
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int) ;
 int io_offset ;
 int pci_request_region (struct pci_dev*,int ,char*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int piix4_pm_io_region ;
 int piix4_poweroff ;
 struct pci_dev* pm_dev ;
 int pm_power_off ;

__attribute__((used)) static int piix4_poweroff_probe(struct pci_dev *dev,
    const struct pci_device_id *id)
{
 int res;

 if (pm_dev)
  return -EINVAL;


 res = pci_request_region(dev, piix4_pm_io_region,
     "PIIX4 PM IO registers");
 if (res) {
  dev_err(&dev->dev, "failed to request PM IO registers: %d\n",
   res);
  return res;
 }

 pm_dev = dev;
 io_offset = pci_resource_start(dev, piix4_pm_io_region);
 pm_power_off = piix4_poweroff;

 return 0;
}
