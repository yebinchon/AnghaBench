
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vhost_virtqueue {int dummy; } ;
typedef int __virtio16 ;


 int __cpu_to_virtio16 (int ,int ) ;
 int vhost_is_little_endian (struct vhost_virtqueue*) ;

__attribute__((used)) static inline __virtio16 cpu_to_vhost16(struct vhost_virtqueue *vq, u16 val)
{
 return __cpu_to_virtio16(vhost_is_little_endian(vq), val);
}
