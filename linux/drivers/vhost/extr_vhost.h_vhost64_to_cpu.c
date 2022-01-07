
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vhost_virtqueue {int dummy; } ;
typedef int __virtio64 ;


 int __virtio64_to_cpu (int ,int ) ;
 int vhost_is_little_endian (struct vhost_virtqueue*) ;

__attribute__((used)) static inline u64 vhost64_to_cpu(struct vhost_virtqueue *vq, __virtio64 val)
{
 return __virtio64_to_cpu(vhost_is_little_endian(vq), val);
}
