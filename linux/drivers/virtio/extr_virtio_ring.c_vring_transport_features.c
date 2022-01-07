
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;
 unsigned int VIRTIO_TRANSPORT_F_END ;
 unsigned int VIRTIO_TRANSPORT_F_START ;
 int __virtio_clear_bit (struct virtio_device*,unsigned int) ;

void vring_transport_features(struct virtio_device *vdev)
{
 unsigned int i;

 for (i = VIRTIO_TRANSPORT_F_START; i < VIRTIO_TRANSPORT_F_END; i++) {
  switch (i) {
  case 128:
   break;
  case 129:
   break;
  case 130:
   break;
  case 133:
   break;
  case 131:
   break;
  case 132:
   break;
  default:

   __virtio_clear_bit(vdev, i);
  }
 }
}
