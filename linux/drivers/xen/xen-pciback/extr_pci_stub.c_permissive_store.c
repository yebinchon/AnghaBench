
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_dev_data {int permissive; } ;
struct pcistub_device {TYPE_1__* dev; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int ENXIO ;
 int dev_warn (int *,char*) ;
 struct xen_pcibk_dev_data* pci_get_drvdata (TYPE_1__*) ;
 struct pcistub_device* pcistub_device_find (int,int,int,int) ;
 int pcistub_device_put (struct pcistub_device*) ;
 int str_to_slot (char const*,int*,int*,int*,int*) ;

__attribute__((used)) static ssize_t permissive_store(struct device_driver *drv, const char *buf,
    size_t count)
{
 int domain, bus, slot, func;
 int err;
 struct pcistub_device *psdev;
 struct xen_pcibk_dev_data *dev_data;

 err = str_to_slot(buf, &domain, &bus, &slot, &func);
 if (err)
  goto out;

 psdev = pcistub_device_find(domain, bus, slot, func);
 if (!psdev) {
  err = -ENODEV;
  goto out;
 }

 dev_data = pci_get_drvdata(psdev->dev);

 if (!dev_data) {
  err = -ENXIO;
  goto release;
 }
 if (!dev_data->permissive) {
  dev_data->permissive = 1;

  dev_warn(&psdev->dev->dev, "enabling permissive mode "
    "configuration space accesses!\n");
  dev_warn(&psdev->dev->dev,
    "permissive mode is potentially unsafe!\n");
 }
release:
 pcistub_device_put(psdev);
out:
 if (!err)
  err = count;
 return err;
}
