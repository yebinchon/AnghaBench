
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int nvqs; int * vqs; } ;


 int __vhost_vq_meta_reset (int ) ;

__attribute__((used)) static void vhost_vq_meta_reset(struct vhost_dev *d)
{
 int i;

 for (i = 0; i < d->nvqs; ++i)
  __vhost_vq_meta_reset(d->vqs[i]);
}
