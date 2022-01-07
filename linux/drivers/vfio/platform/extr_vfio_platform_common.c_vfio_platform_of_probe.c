
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int name; int compat; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int ) ;
 int device_property_read_string (struct device*,char*,int *) ;

__attribute__((used)) static int vfio_platform_of_probe(struct vfio_platform_device *vdev,
      struct device *dev)
{
 int ret;

 ret = device_property_read_string(dev, "compatible",
       &vdev->compat);
 if (ret)
  dev_err(dev, "Cannot retrieve compat for %s\n", vdev->name);

 return ret;
}
