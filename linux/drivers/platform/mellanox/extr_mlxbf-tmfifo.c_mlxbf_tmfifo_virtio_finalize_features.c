
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int features; } ;
struct mlxbf_tmfifo_vdev {int features; } ;


 struct mlxbf_tmfifo_vdev* mlxbf_vdev_to_tmfifo (struct virtio_device*) ;

__attribute__((used)) static int mlxbf_tmfifo_virtio_finalize_features(struct virtio_device *vdev)
{
 struct mlxbf_tmfifo_vdev *tm_vdev = mlxbf_vdev_to_tmfifo(vdev);

 tm_vdev->features = vdev->features;

 return 0;
}
