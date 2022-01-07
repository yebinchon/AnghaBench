
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int is_le; } ;


 int VIRTIO_F_VERSION_1 ;
 scalar_t__ vhost_has_feature (struct vhost_virtqueue*,int ) ;
 scalar_t__ virtio_legacy_is_little_endian () ;

__attribute__((used)) static void vhost_init_is_le(struct vhost_virtqueue *vq)
{
 vq->is_le = vhost_has_feature(vq, VIRTIO_F_VERSION_1)
  || virtio_legacy_is_little_endian();
}
