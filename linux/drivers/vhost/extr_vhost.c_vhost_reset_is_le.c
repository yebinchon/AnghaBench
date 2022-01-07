
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int dummy; } ;


 int vhost_init_is_le (struct vhost_virtqueue*) ;

__attribute__((used)) static void vhost_reset_is_le(struct vhost_virtqueue *vq)
{
 vhost_init_is_le(vq);
}
