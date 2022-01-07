
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_used_elem {int member_1; int member_0; } ;
struct vhost_virtqueue {int dummy; } ;


 int cpu_to_vhost32 (struct vhost_virtqueue*,int) ;
 int vhost_add_used_n (struct vhost_virtqueue*,struct vring_used_elem*,int) ;

int vhost_add_used(struct vhost_virtqueue *vq, unsigned int head, int len)
{
 struct vring_used_elem heads = {
  cpu_to_vhost32(vq, head),
  cpu_to_vhost32(vq, len)
 };

 return vhost_add_used_n(vq, &heads, 1);
}
