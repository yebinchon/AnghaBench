
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vhost_virtqueue {int acked_features; int mutex; } ;
struct TYPE_2__ {int mutex; } ;
struct vhost_test {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;


 int EFAULT ;
 int VHOST_F_LOG_ALL ;
 size_t VHOST_TEST_VQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_log_access_ok (TYPE_1__*) ;

__attribute__((used)) static int vhost_test_set_features(struct vhost_test *n, u64 features)
{
 struct vhost_virtqueue *vq;

 mutex_lock(&n->dev.mutex);
 if ((features & (1 << VHOST_F_LOG_ALL)) &&
     !vhost_log_access_ok(&n->dev)) {
  mutex_unlock(&n->dev.mutex);
  return -EFAULT;
 }
 vq = &n->vqs[VHOST_TEST_VQ];
 mutex_lock(&vq->mutex);
 vq->acked_features = features;
 mutex_unlock(&vq->mutex);
 mutex_unlock(&n->dev.mutex);
 return 0;
}
