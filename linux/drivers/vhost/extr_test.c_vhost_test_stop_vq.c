
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int mutex; int * private_data; } ;
struct vhost_test {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void *vhost_test_stop_vq(struct vhost_test *n,
    struct vhost_virtqueue *vq)
{
 void *private;

 mutex_lock(&vq->mutex);
 private = vq->private_data;
 vq->private_data = ((void*)0);
 mutex_unlock(&vq->mutex);
 return private;
}
