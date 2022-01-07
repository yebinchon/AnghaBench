
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct virtio_device {TYPE_1__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct virtio_device* dev_to_virtio (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t device_show(struct device *_d,
      struct device_attribute *attr, char *buf)
{
 struct virtio_device *dev = dev_to_virtio(_d);
 return sprintf(buf, "0x%04x\n", dev->id.device);
}
