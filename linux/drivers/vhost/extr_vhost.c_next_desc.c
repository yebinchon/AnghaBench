
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int flags; int next; } ;
struct vhost_virtqueue {int dummy; } ;


 int READ_ONCE (int ) ;
 int VRING_DESC_F_NEXT ;
 int cpu_to_vhost16 (struct vhost_virtqueue*,int ) ;
 unsigned int vhost16_to_cpu (struct vhost_virtqueue*,int ) ;

__attribute__((used)) static unsigned next_desc(struct vhost_virtqueue *vq, struct vring_desc *desc)
{
 unsigned int next;


 if (!(desc->flags & cpu_to_vhost16(vq, VRING_DESC_F_NEXT)))
  return -1U;


 next = vhost16_to_cpu(vq, READ_ONCE(desc->next));
 return next;
}
