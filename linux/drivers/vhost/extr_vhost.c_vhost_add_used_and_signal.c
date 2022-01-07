
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int dummy; } ;
struct vhost_dev {int dummy; } ;


 int vhost_add_used (struct vhost_virtqueue*,unsigned int,int) ;
 int vhost_signal (struct vhost_dev*,struct vhost_virtqueue*) ;

void vhost_add_used_and_signal(struct vhost_dev *dev,
          struct vhost_virtqueue *vq,
          unsigned int head, int len)
{
 vhost_add_used(vq, head, len);
 vhost_signal(dev, vq);
}
