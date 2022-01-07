
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
struct vhost_net {TYPE_1__ dev; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ vhost_dev_has_owner (TYPE_1__*) ;
 int vhost_dev_set_owner (TYPE_1__*) ;
 int vhost_net_clear_ubuf_info (struct vhost_net*) ;
 int vhost_net_flush (struct vhost_net*) ;
 int vhost_net_set_ubuf_info (struct vhost_net*) ;

__attribute__((used)) static long vhost_net_set_owner(struct vhost_net *n)
{
 int r;

 mutex_lock(&n->dev.mutex);
 if (vhost_dev_has_owner(&n->dev)) {
  r = -EBUSY;
  goto out;
 }
 r = vhost_net_set_ubuf_info(n);
 if (r)
  goto out;
 r = vhost_dev_set_owner(&n->dev);
 if (r)
  vhost_net_clear_ubuf_info(n);
 vhost_net_flush(n);
out:
 mutex_unlock(&n->dev.mutex);
 return r;
}
