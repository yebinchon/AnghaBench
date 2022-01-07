
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int mutex; } ;
struct vhost_vsock {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;
struct vhost_virtqueue {int acked_features; int mutex; } ;


 int ARRAY_SIZE (struct vhost_virtqueue*) ;
 int EFAULT ;
 int EOPNOTSUPP ;
 int VHOST_F_LOG_ALL ;
 int VHOST_VSOCK_FEATURES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_log_access_ok (TYPE_1__*) ;

__attribute__((used)) static int vhost_vsock_set_features(struct vhost_vsock *vsock, u64 features)
{
 struct vhost_virtqueue *vq;
 int i;

 if (features & ~VHOST_VSOCK_FEATURES)
  return -EOPNOTSUPP;

 mutex_lock(&vsock->dev.mutex);
 if ((features & (1 << VHOST_F_LOG_ALL)) &&
     !vhost_log_access_ok(&vsock->dev)) {
  mutex_unlock(&vsock->dev.mutex);
  return -EFAULT;
 }

 for (i = 0; i < ARRAY_SIZE(vsock->vqs); i++) {
  vq = &vsock->vqs[i];
  mutex_lock(&vq->mutex);
  vq->acked_features = features;
  mutex_unlock(&vq->mutex);
 }
 mutex_unlock(&vsock->dev.mutex);
 return 0;
}
