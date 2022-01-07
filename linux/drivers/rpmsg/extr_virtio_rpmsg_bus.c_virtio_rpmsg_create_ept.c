
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_rpmsg_channel {int vrp; } ;
struct rpmsg_endpoint {int dummy; } ;
struct rpmsg_device {int dummy; } ;
struct rpmsg_channel_info {int src; } ;
typedef int rpmsg_rx_cb_t ;


 struct rpmsg_endpoint* __rpmsg_create_ept (int ,struct rpmsg_device*,int ,void*,int ) ;
 struct virtio_rpmsg_channel* to_virtio_rpmsg_channel (struct rpmsg_device*) ;

__attribute__((used)) static struct rpmsg_endpoint *virtio_rpmsg_create_ept(struct rpmsg_device *rpdev,
            rpmsg_rx_cb_t cb,
            void *priv,
            struct rpmsg_channel_info chinfo)
{
 struct virtio_rpmsg_channel *vch = to_virtio_rpmsg_channel(rpdev);

 return __rpmsg_create_ept(vch->vrp, rpdev, cb, priv, chinfo.src);
}
