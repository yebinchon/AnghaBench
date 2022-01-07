
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vhost_virtqueue {int dummy; } ;
typedef int __virtio32 ;


 int __virtio32_to_cpu (int ,int ) ;
 int vhost_is_little_endian (struct vhost_virtqueue*) ;

__attribute__((used)) static inline u32 vhost32_to_cpu(struct vhost_virtqueue *vq, __virtio32 val)
{
 return __virtio32_to_cpu(vhost_is_little_endian(vq), val);
}
