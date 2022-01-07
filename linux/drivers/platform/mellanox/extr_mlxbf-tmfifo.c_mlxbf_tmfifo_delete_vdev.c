
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxbf_tmfifo_vdev {int vdev; } ;
struct mlxbf_tmfifo {int lock; struct mlxbf_tmfifo_vdev** vdev; } ;


 int mlxbf_tmfifo_free_vrings (struct mlxbf_tmfifo*,struct mlxbf_tmfifo_vdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_virtio_device (int *) ;

__attribute__((used)) static int mlxbf_tmfifo_delete_vdev(struct mlxbf_tmfifo *fifo, int vdev_id)
{
 struct mlxbf_tmfifo_vdev *tm_vdev;

 mutex_lock(&fifo->lock);


 tm_vdev = fifo->vdev[vdev_id];
 if (tm_vdev) {
  unregister_virtio_device(&tm_vdev->vdev);
  mlxbf_tmfifo_free_vrings(fifo, tm_vdev);
  fifo->vdev[vdev_id] = ((void*)0);
 }

 mutex_unlock(&fifo->lock);

 return 0;
}
