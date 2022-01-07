
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {int dummy; } ;
struct rpmsg_device {TYPE_1__* ops; } ;
struct rpmsg_channel_info {int dummy; } ;
typedef int rpmsg_rx_cb_t ;
struct TYPE_2__ {struct rpmsg_endpoint* (* create_ept ) (struct rpmsg_device*,int ,void*,struct rpmsg_channel_info) ;} ;


 scalar_t__ WARN_ON (int) ;
 struct rpmsg_endpoint* stub1 (struct rpmsg_device*,int ,void*,struct rpmsg_channel_info) ;

struct rpmsg_endpoint *rpmsg_create_ept(struct rpmsg_device *rpdev,
     rpmsg_rx_cb_t cb, void *priv,
     struct rpmsg_channel_info chinfo)
{
 if (WARN_ON(!rpdev))
  return ((void*)0);

 return rpdev->ops->create_ept(rpdev, cb, priv, chinfo);
}
