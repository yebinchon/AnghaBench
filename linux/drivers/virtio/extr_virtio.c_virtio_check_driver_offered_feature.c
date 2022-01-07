
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_driver {unsigned int feature_table_size; unsigned int* feature_table; unsigned int* feature_table_legacy; unsigned int feature_table_size_legacy; } ;
struct TYPE_2__ {int driver; } ;
struct virtio_device {TYPE_1__ dev; } ;


 int BUG () ;
 struct virtio_driver* drv_to_virtio (int ) ;

void virtio_check_driver_offered_feature(const struct virtio_device *vdev,
      unsigned int fbit)
{
 unsigned int i;
 struct virtio_driver *drv = drv_to_virtio(vdev->dev.driver);

 for (i = 0; i < drv->feature_table_size; i++)
  if (drv->feature_table[i] == fbit)
   return;

 if (drv->feature_table_legacy) {
  for (i = 0; i < drv->feature_table_size_legacy; i++)
   if (drv->feature_table_legacy[i] == fbit)
    return;
 }

 BUG();
}
