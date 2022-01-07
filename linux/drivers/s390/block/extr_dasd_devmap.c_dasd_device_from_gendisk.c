
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct dasd_devmap* private_data; } ;
struct dasd_devmap {struct dasd_device* device; } ;
struct dasd_device {int dummy; } ;


 int dasd_devmap_lock ;
 int dasd_get_device (struct dasd_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dasd_device *dasd_device_from_gendisk(struct gendisk *gdp)
{
 struct dasd_device *device;
 struct dasd_devmap *devmap;

 if (!gdp->private_data)
  return ((void*)0);
 device = ((void*)0);
 spin_lock(&dasd_devmap_lock);
 devmap = gdp->private_data;
 if (devmap && devmap->device) {
  device = devmap->device;
  dasd_get_device(device);
 }
 spin_unlock(&dasd_devmap_lock);
 return device;
}
