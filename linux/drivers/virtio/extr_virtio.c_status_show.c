
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_status ) (struct virtio_device*) ;} ;


 struct virtio_device* dev_to_virtio (struct device*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;

__attribute__((used)) static ssize_t status_show(struct device *_d,
      struct device_attribute *attr, char *buf)
{
 struct virtio_device *dev = dev_to_virtio(_d);
 return sprintf(buf, "0x%08x\n", dev->config->get_status(dev));
}
