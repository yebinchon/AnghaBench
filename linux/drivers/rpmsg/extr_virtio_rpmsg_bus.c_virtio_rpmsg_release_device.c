
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_rpmsg_channel {int dummy; } ;
struct rpmsg_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct virtio_rpmsg_channel*) ;
 struct rpmsg_device* to_rpmsg_device (struct device*) ;
 struct virtio_rpmsg_channel* to_virtio_rpmsg_channel (struct rpmsg_device*) ;

__attribute__((used)) static void virtio_rpmsg_release_device(struct device *dev)
{
 struct rpmsg_device *rpdev = to_rpmsg_device(dev);
 struct virtio_rpmsg_channel *vch = to_virtio_rpmsg_channel(rpdev);

 kfree(vch);
}
