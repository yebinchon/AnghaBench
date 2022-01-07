
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vdev {int config; } ;


 int memcpy (void*,int *,unsigned int) ;
 struct mlxbf_tmfifo_vdev* mlxbf_vdev_to_tmfifo (struct virtio_device*) ;

__attribute__((used)) static void mlxbf_tmfifo_virtio_get(struct virtio_device *vdev,
        unsigned int offset,
        void *buf,
        unsigned int len)
{
 struct mlxbf_tmfifo_vdev *tm_vdev = mlxbf_vdev_to_tmfifo(vdev);

 if ((u64)offset + len > sizeof(tm_vdev->config))
  return;

 memcpy(buf, (u8 *)&tm_vdev->config + offset, len);
}
