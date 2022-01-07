
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_rpmsg_channel {int vrp; } ;
struct rpmsg_endpoint {int rpdev; } ;


 int __rpmsg_destroy_ept (int ,struct rpmsg_endpoint*) ;
 struct virtio_rpmsg_channel* to_virtio_rpmsg_channel (int ) ;

__attribute__((used)) static void virtio_rpmsg_destroy_ept(struct rpmsg_endpoint *ept)
{
 struct virtio_rpmsg_channel *vch = to_virtio_rpmsg_channel(ept->rpdev);

 __rpmsg_destroy_ept(vch->vrp, ept);
}
