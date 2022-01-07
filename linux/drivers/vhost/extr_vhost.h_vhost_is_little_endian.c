
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {scalar_t__ is_le; } ;


 scalar_t__ virtio_legacy_is_little_endian () ;

__attribute__((used)) static inline bool vhost_is_little_endian(struct vhost_virtqueue *vq)
{
 return virtio_legacy_is_little_endian() || vq->is_le;
}
