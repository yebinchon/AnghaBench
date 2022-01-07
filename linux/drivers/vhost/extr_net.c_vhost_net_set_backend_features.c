
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int mutex; } ;
struct vhost_net {TYPE_1__ dev; TYPE_3__* vqs; } ;
struct TYPE_5__ {int mutex; int acked_backend_features; } ;
struct TYPE_6__ {TYPE_2__ vq; } ;


 int VHOST_NET_VQ_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vhost_net_set_backend_features(struct vhost_net *n, u64 features)
{
 int i;

 mutex_lock(&n->dev.mutex);
 for (i = 0; i < VHOST_NET_VQ_MAX; ++i) {
  mutex_lock(&n->vqs[i].vq.mutex);
  n->vqs[i].vq.acked_backend_features = features;
  mutex_unlock(&n->vqs[i].vq.mutex);
 }
 mutex_unlock(&n->dev.mutex);

 return 0;
}
