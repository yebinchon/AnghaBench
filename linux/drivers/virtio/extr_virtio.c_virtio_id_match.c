
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device_id {scalar_t__ device; scalar_t__ vendor; } ;
struct TYPE_2__ {scalar_t__ device; scalar_t__ vendor; } ;
struct virtio_device {TYPE_1__ id; } ;


 scalar_t__ VIRTIO_DEV_ANY_ID ;

__attribute__((used)) static inline int virtio_id_match(const struct virtio_device *dev,
      const struct virtio_device_id *id)
{
 if (id->device != dev->id.device && id->device != VIRTIO_DEV_ANY_ID)
  return 0;

 return id->vendor == VIRTIO_DEV_ANY_ID || id->vendor == dev->id.vendor;
}
