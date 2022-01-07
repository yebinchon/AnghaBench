
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device_id {scalar_t__ device; } ;
struct virtio_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct virtio_device_id* id_table; } ;


 struct virtio_device* dev_to_virtio (struct device*) ;
 TYPE_1__* drv_to_virtio (struct device_driver*) ;
 scalar_t__ virtio_id_match (struct virtio_device*,struct virtio_device_id const*) ;

__attribute__((used)) static int virtio_dev_match(struct device *_dv, struct device_driver *_dr)
{
 unsigned int i;
 struct virtio_device *dev = dev_to_virtio(_dv);
 const struct virtio_device_id *ids;

 ids = drv_to_virtio(_dr)->id_table;
 for (i = 0; ids[i].device; i++)
  if (virtio_id_match(dev, &ids[i]))
   return 1;
 return 0;
}
