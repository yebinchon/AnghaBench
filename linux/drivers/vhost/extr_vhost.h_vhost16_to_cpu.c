
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vhost_virtqueue {int dummy; } ;
typedef int __virtio16 ;


 int __virtio16_to_cpu (int ,int ) ;
 int vhost_is_little_endian (struct vhost_virtqueue*) ;

__attribute__((used)) static inline u16 vhost16_to_cpu(struct vhost_virtqueue *vq, __virtio16 val)
{
 return __virtio16_to_cpu(vhost_is_little_endian(vq), val);
}
