
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_used_elem {int dummy; } ;
struct vhost_virtqueue {int dummy; } ;
struct vhost_dev {int dummy; } ;


 int vhost_add_used_n (struct vhost_virtqueue*,struct vring_used_elem*,unsigned int) ;
 int vhost_signal (struct vhost_dev*,struct vhost_virtqueue*) ;

void vhost_add_used_and_signal_n(struct vhost_dev *dev,
     struct vhost_virtqueue *vq,
     struct vring_used_elem *heads, unsigned count)
{
 vhost_add_used_n(vq, heads, count);
 vhost_signal(dev, vq);
}
