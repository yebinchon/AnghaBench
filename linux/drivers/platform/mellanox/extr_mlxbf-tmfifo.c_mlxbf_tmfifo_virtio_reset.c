
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vdev {scalar_t__ status; } ;


 struct mlxbf_tmfifo_vdev* mlxbf_vdev_to_tmfifo (struct virtio_device*) ;

__attribute__((used)) static void mlxbf_tmfifo_virtio_reset(struct virtio_device *vdev)
{
 struct mlxbf_tmfifo_vdev *tm_vdev = mlxbf_vdev_to_tmfifo(vdev);

 tm_vdev->status = 0;
}
