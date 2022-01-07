
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vhost_virtqueue {int dummy; } ;
typedef int __virtio32 ;


 int __cpu_to_virtio32 (int ,int ) ;
 int vhost_is_little_endian (struct vhost_virtqueue*) ;

__attribute__((used)) static inline __virtio32 cpu_to_vhost32(struct vhost_virtqueue *vq, u32 val)
{
 return __cpu_to_virtio32(vhost_is_little_endian(vq), val);
}
