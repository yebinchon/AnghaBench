
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpmsg_endpoint {int addr; struct rpmsg_device* rpdev; } ;
struct rpmsg_device {int dst; } ;


 int rpmsg_send_offchannel_raw (struct rpmsg_device*,int ,int ,void*,int,int) ;

__attribute__((used)) static int virtio_rpmsg_send(struct rpmsg_endpoint *ept, void *data, int len)
{
 struct rpmsg_device *rpdev = ept->rpdev;
 u32 src = ept->addr, dst = rpdev->dst;

 return rpmsg_send_offchannel_raw(rpdev, src, dst, data, len, 1);
}
