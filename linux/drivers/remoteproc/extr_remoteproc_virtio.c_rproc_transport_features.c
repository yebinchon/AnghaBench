
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int VIRTIO_F_RING_PACKED ;
 int __virtio_clear_bit (struct virtio_device*,int ) ;

__attribute__((used)) static void rproc_transport_features(struct virtio_device *vdev)
{





 __virtio_clear_bit(vdev, VIRTIO_F_RING_PACKED);
}
